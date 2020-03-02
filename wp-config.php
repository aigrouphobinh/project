<?php
/**
 * Cấu hình cơ bản cho WordPress
 *
 * Trong quá trình cài đặt, file "wp-config.php" sẽ được tạo dựa trên nội dung 
 * mẫu của file này. Bạn không bắt buộc phải sử dụng giao diện web để cài đặt, 
 * chỉ cần lưu file này lại với tên "wp-config.php" và điền các thông tin cần thiết.
 *
 * File này chứa các thiết lập sau:
 *
 * * Thiết lập MySQL
 * * Các khóa bí mật
 * * Tiền tố cho các bảng database
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** Thiết lập MySQL - Bạn có thể lấy các thông tin này từ host/server ** //
/** Tên database MySQL */
define( 'DB_NAME', 'db_ecats' );

/** Username của database */
define( 'DB_USER', 'hobinh' );

/** Mật khẩu của database */
define( 'DB_PASSWORD', '@aigroup#123' );

/** Hostname của database */
define( 'DB_HOST', 'localhost' );

/** Database charset sử dụng để tạo bảng database. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Kiểu database collate. Đừng thay đổi nếu không hiểu rõ. */
define('DB_COLLATE', '');

define( 'WP_MEMORY_LIMIT', '256M' );
/**#@+
 * Khóa xác thực và salt.
 *
 * Thay đổi các giá trị dưới đây thành các khóa không trùng nhau!
 * Bạn có thể tạo ra các khóa này bằng công cụ
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * Bạn có thể thay đổi chúng bất cứ lúc nào để vô hiệu hóa tất cả
 * các cookie hiện có. Điều này sẽ buộc tất cả người dùng phải đăng nhập lại.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'S]#V!w;Ng+qdmOp[fj0?AqWs@a4:{D6HJB74%$CYg/<e_-`?U7zK[~D0F04ERChM' );
define( 'SECURE_AUTH_KEY',  'O{UUv&.@$R^kYjJNeV]>w)bye_}_jj{xiM&fg/OBo}[37v5v, cgZLTU9CbrX,!N' );
define( 'LOGGED_IN_KEY',    'CxvqJ^#rfjMO/pU,7j5O[;bs=/.46;xWL,JRT+*gRgrrDLsUzr66FuO&|9r`k{Du' );
define( 'NONCE_KEY',        'QH/:**tvZ:t[q+04{VkiT*Y~@bA+^-x9~o#^%?dQ>)Z)ur%d=H9=,PT^;$0[W]{/' );
define( 'AUTH_SALT',        '=(v>1,~7a<KDPz@^Yg=Tlg&Qi_H2d94U1N<9:{hW,S(HqE_QZ9^v5iyM<C-]9MCs' );
define( 'SECURE_AUTH_SALT', '3liTIn3<zwRFzk77~JZ|R[z/C@wX,]2|b36no;V960%Hc!c8ZuI<9 /UK4%Om]yF' );
define( 'LOGGED_IN_SALT',   '*603AVKGx:y8qs]PubB>6C{;u5xTr@Y7hf{-Ak9E=R^F&yLX@ha)K/n-m? I 11S' );
define( 'NONCE_SALT',       ',9DrA+.NWH@W]uh7W@b/P}rzi7V,HEnrr_[jN,Mf{7tLc.Dq=BM3R7{01]VK//$1' );

/**#@-*/

/**
 * Tiền tố cho bảng database.
 *
 * Đặt tiền tố cho bảng giúp bạn có thể cài nhiều site WordPress vào cùng một database.
 * Chỉ sử dụng số, ký tự và dấu gạch dưới!
 */
$table_prefix  = 'wp_';

/**
 * Dành cho developer: Chế độ debug.
 *
 * Thay đổi hằng số này thành true sẽ làm hiện lên các thông báo trong quá trình phát triển.
 * Chúng tôi khuyến cáo các developer sử dụng WP_DEBUG trong quá trình phát triển plugin và theme.
 *
 * Để có thông tin về các hằng số khác có thể sử dụng khi debug, hãy xem tại Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* Đó là tất cả thiết lập, ngưng sửa từ phần này trở xuống. Chúc bạn viết blog vui vẻ. */

/** Đường dẫn tuyệt đối đến thư mục cài đặt WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Thiết lập biến và include file. */
require_once(ABSPATH . 'wp-settings.php');
