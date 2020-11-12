let MailRegex = /^(([^<>()\[\]\.,;:\s@\"]+(\.[^<>()\[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
let PhoneRegex = /((09|03|07|08|05)+([0-9]{8})\b)/i;

// validate user, phone, mail
function fireErr(text) {
    Swal.fire({
        type: 'error',
        title: 'Oops...',
        text: text,
        showConfirmButton: true,
        showCancelButton: false,
    });
}
$("#contact").click(async function() {
    let username2 = $("#name2").val();
    let dienthoai2 = $("#dienthoai2").val();
    let email2 = $("#email2").val();
    let message2 = $("#message2").val();
    let Loading = Swal.fire({
        allowEscapeKey: false,
        title: 'Đang kiểm tra',
        allowOutsideClick: false,
        showConfirmButton: false,
        text: 'Vui lòng chờ trong giây lát...',
        imageUrl: 'views/img/Default/Loading.gif',
    });
    if (username2 === "" || dienthoai2 === "" || email2 === "" || message2 === "") {
        fireErr('Vui lòng nhập đầy đủ thông tin');
        return;
    }
    if (PhoneRegex.test(dienthoai2) === false) {
        fireErr('Số điện thoại không hợp lệ.');
        return;
    }
    if (MailRegex.test(email2) === false) {
        fireErr('Địa chỉ email không hợp lệ hoặc để trống');
        return;
    }
    if (message2.length < 6) {
        fireErr('Tin nhắn quá ngắn');
        return;
    }
    let contact = new FormData();
    contact.append('username', username2); //tên
    contact.append('email', email2); //tên
    contact.append('phone', dienthoai2);
    contact.append('message', message2); //tên
    contact.append('Action', 'contact'); //check tài khoản đã tồn tại hay chưa
    await $.ajax({
        type: 'POST',
        url: 'controllers/ajax/contact.php',
        dataType: 'JSON',
        cache: false,
        contentType: false,
        processData: false,
        data: contact,
        success: function(response) {
            if (response.StatusCode === 1) {
                Loading.close();

                Swal.fire({
                    //timer: 3000,
                    type: 'success',
                    title: 'Gửi thư thành công.',
                    text: 'Cảm ơn quý khách đã để lại lời nhắn với chúng tôi, chúng tôi sẽ phản hồi nhanh nhất !.',
                    showConfirmButton: true,
                    showCancelButton: false,
                });
            }
        },
        error: function() {
            Swal.fire({
                timer: 3000,
                type: 'error',
                title: 'Có lỗi xảy ra trong quá trình xử lý dữ liệu. Vui lòng thử lại sau.',
                showConfirmButton: false,
                showCancelButton: false,
            });
        }
    });
})