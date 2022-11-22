


function showError(input,message){//ham xuat ra warning khi nhap sai
    let parent = input.parentElement//bien parent la gia tri class chua input dc truy nguoc
    let small = parent.querySelector('small')//bien small la gia trij cua tag small trong class parent
    parent.classList.add('error')
    small.innerText= message
}

function showSucess(input){//ham xuat ra warning khi nhap dung
    let parent = input.parentElement//bien parent la gia tri class chua input dc truy nguoc
    let small = parent.querySelector('small') //bien small la gia trij cua tag small trong class parent
    parent.classList.remove('error')
    small.innerText= ''
}

function checkgEmptyError(listInput){
    let isEmpty = false //ban dau khong co loi rong
    listInput.forEach(input => {
        input.value = input.value.trim()// ham chuan hoa du lieu dau vao

        if(!input.value){  //neu thanh input bi rong du lieu
            isEmpty = true //cap nhat lai la da co loi 
            showError(input,'Vui long nhap dong nay')
        }else{
            showSucess(input)
        }
        return isEmpty
    })
}

function checkEmail(input){ //ham kiem tra email hop le
    const regexEmail =
    /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i
    input.value = input.value.trim() //chuan hoa email dau vao

    let isEmailError = !regexEmail.test(input.value) //Email dang khong hop le
    if(regexEmail.test(input.value)){
        showSucess(input) 
    }else{
        showError(input,'Email khong hop le') 
    }
    return isEmailError
}

function checkLengthError(input,min,max){  //kiemtra do dai du lieu
    input.value = input.value.trim()

    if(input.value.length > max){
        showError(input,'Khong duoc qua '+max+ ' ky tu')
        return true  //return true neu co loi;
    }
    else if(input.value.length < min){
        showError(input,'Phai co it nhat '+min+' ky tu')
        return true  //return true neu co loi
    }else{
        return false
    }  // neu khong co loi xay ra
}

function checkMatchPasswordError(passwordInput,confirmPasswordInput){
    if(passwordInput.value != confirmPasswordInput.value){
        showError(confirmPasswordInput,'Mat khau khong trung khop')
        return true //co loi xay ra
    }else{
        return false //khi khong co loi
    }

}
//////////////////////////////////////////////////////////////


function signup(){
    event.preventDefault()  
    var username = document.querySelector('#uusername')
    var email = document.querySelector('#eemail')
    var password = document.querySelector('#ppassword')
    var confirmpassword = document.querySelector('#pppassword')

    let isEmptyError = checkgEmptyError([username,email,password,confirmpassword]) // ham kiem tra xem input co bi rong khong?
    let isEmailError = checkEmail(email)
    let isUsernameError = checkLengthError(username,2,10)
    let isPasswordError = checkLengthError(password,2,10)
    let isMatchPasswordError = checkMatchPasswordError(password,confirmpassword)

    if(isEmailError || isEmptyError || isUsernameError || isPasswordError || isMatchPasswordError) {
        return false
     }else{
        var signup = {
          user : username.value ,
          email : email.value,
          pass : password.value ,
        }
        var json = JSON.stringify(signup)
        localStorage.setItem(username.value,json)
        showError(username,'Dang ki thanh cong')
        showError(email,'Dang ki thanh cong')
        showError(password,'Dang ki thanh cong')
        showError(confirmpassword,'Dang ki thanh cong')
        
    }
}

function signin(){
    event.preventDefault()  
    var username = document.querySelector('#username')
    var email = document.querySelector('#email')
    var password = document.querySelector('#password')
    var usermane = document.getElementById('username').value
    
    var user = localStorage.getItem(usermane)
    var data = JSON.parse(user)

    let isEmptyError = checkgEmptyError([username,email,password]) // ham kiem tra xem input co bi rong khong?
    let isEmailError = checkEmail(email)

    if(isEmailError || isEmptyError){
        return false
    }
    else if(username.value == data.user && email.value == data.email && password.value == data.pass){
            window.location.href ="doanWeb.html"
            return true
    }
    else{
            showError(username,'Dang nhap that bai')
            showError(email,'Dang nhap that bai')
            showError(password,'Dang nhap that bai')
            return false
        }
}