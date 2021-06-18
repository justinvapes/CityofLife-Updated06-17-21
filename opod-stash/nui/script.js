const input = document.querySelector('div #input');
const numbers = document.querySelectorAll('.numbers');
const keypad = document.querySelector('#keypad form');
const mainBody = document.querySelector('#main')
const secureButton = document.querySelector('#secure');


let delay = 100;
let lastInput = 0;
let changeCode = false;
let secureMode = false;
let curCode = '';
let stashIndex = undefined;
let onFoot = undefined;
const clickSound = new Howl({
    src: ['./sound.ogg'],
    volume: 0.2,
});


window.addEventListener('message', e => {
    let data = e.data
    if (data.setOpen !== undefined) {
        mainBody.style.opacity = data.setOpen ? 100 + '%' : 0 + '%' 
    }
    if (data.setCode !== undefined) {
        curCode = data.setCode;
        stashIndex = data.stashIndex;
        onFoot = data.onFoot;
    }
    if (data.changeCode !== undefined) {
        changeCode = data.changeCode;
    }
})

window.addEventListener('click', (e) => {
    numbers.forEach(num => {
        if (e.target === num) {
            if (lastInput >= (Date.now() - delay)) {
                return;
            }
            lastInput = Date.now();
            if (e.target.textContent !== "C" && e.target.textContent !== 'X') {
                if (checkLength(input.value)) {
                    clickSound.play()
                    input.value = input.value + (e.target.textContent)
                    input.value.length == 4 ? closeKeypad(input.value) : null
                }
            } else if (e.target.textContent === 'C' && input.value.length != undefined) {
                if (input.value.length > 0) {
                    clickSound.play()
                    input.value = input.value.substring(0, input.value.length - 1)
                }
            } else if (e.target.textContent === 'X') {
                closeKeypad()
            }
        }
    })
    if (e.target === secureButton) {
        secureMode = !secureMode
        secureMode == true ? input.type = 'password' : input.type = 'text'
        secureButton.classList.toggle('secureActive')
    } 
})

input.addEventListener('input', (e) =>{
    let code = input.value
    if (parseInt(e.data) || e.data == 0) {
        let length = 4
        if (lastInput >= (Date.now() - delay)) {
            input.value = code.substring(0, code.length - 1);
            return;
        }
        lastInput = Date.now();
        if (code.length > length) {
            input.value = code.substring(0, code.length - 1);
        } else {
            clickSound.play()
        }
        code.length == 4 ? closeKeypad(code) : null
    } else {
        input.value = code.substring(0, code.length - 1)
    }
})
keypad.addEventListener('submit', (e) => {
    e.preventDefault();
})

let checkLength = (code) => {
    let length = 4
    if (code != undefined) {
        if (code.length > length) {
            return false
        }
    }    
    return true
}

let closeKeypad = (code) => {
    setTimeout(() => {
        input.value = '';
        let result = {}
        if (code !== '' && code !== undefined && !changeCode) {
            if (code === curCode) {
                result.success = true
                result.index = stashIndex
                result.onFoot = onFoot
            } else if (code !== curCode) {
                result.success = false
            }
        } else if (changeCode) {
            result.code = code
            result.index = stashIndex
            result.secureMode = secureMode
        }
        curCode = '';
        changeCode = false;
        stashIndex = undefined;
        onFoot = undefined
        $.post('http://opod-stash/close', JSON.stringify(result))
    }, 100)
}