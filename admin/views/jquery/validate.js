$(function() {
    $("#hanghoaadd").validate({
        rules: {
            "img[]": { required: true },
            iddm: { required: true },
            name: { required: true, minlength: 6 },
            dungtich: { required: true, range: [0, 10000] },
            gia: { required: true },
            giamgia: { required: true, range: [0, 100] },
            luotxem: { required: true },
            mota: { required: true }
        },
        messages: {
            "img[]": {
                required: "<span class='badge badge-warning'>! Vui lòng chọn ảnh </span>"
            },
            iddm: {
                required: "<span class='badge badge-warning'>! Vui lòng chọn danh mục</span>"
            },
            name: {
                required: "<span class='badge badge-warning'>! Vui lòng nhập tên sản phẩm</span>",
                minlength: "<span class='badge badge-warning'>! tên sản phẩm phải trên 6 ký tự</span>"
            },
            dungtich: {
                required: "<span class='badge badge-warning'>! Vui lòng nhập dung tích sản phẩm chỉ từ 0-10000</span>",
                range: "<span class='badge badge-warning'>! dung tích sản phẩm chỉ từ 0-10000</span>"
            },
            gia: {
                required: "<span class='badge badge-warning'>! Vui lòng nhập giá</span>"
            },
            giamgia: {
                required: "<span class='badge badge-warning'>! Vui lòng nhập giảm giá</span>",
                range: "<span class='badge badge-warning'>!Giảm giá chỉ được nhập từ 0-100</span>"
            },
            luotxem: {
                required: "<span class='badge badge-warning'>! Vui lòng nhập lượt xem</span>",
            },
            mota: {
                required: "<span class='badge badge-warning'>! Vui lòng nhập mô tả</span>"
            }
        }
    });
});

$(function() {
    $("#formlogin").validate({
        rules: {
            user: { required: true, maxlength: 20, minlength: 6 },
            pass: { required: true, minlength: 6 }
        },
        messages: {
            user: {
                required: "<span class='badge-warning'>Mời bạn nhập họ tên vào",
                maxlength: "<span class='badge-warning'>Họ tên dài quá, phải<20 ký tự</span>",
                minlength: "<span class='badge-warning'>Username phải trên 6 ký tự</span>"
            },
            pass: {
                required: "<span class='badge-warning'>Không để trống password</span>",
                minlength: "<span class='badge-warning'>Password phải trên 6 ký tự</span>",

            }
        }
    });
});