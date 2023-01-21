<?php

/* 
 *
 * Rejestracja obrazków 
 *
 */

add_theme_support( 'post-thumbnails' );

/* 
 *
 * Rejestracja logo 
 *
 */

add_theme_support( 'custom-logo' );

/* 
 *
 * Rejestracja menu 
 *
 */

function reg_mymenu() {
  register_nav_menus(
    array(
      'header-menu' => __( 'Menu główne' ),
      'footer1-menu' => __( 'Menu stopka' ),
      'footer2-menu' => __( 'Menu dół stopki' )
    )
  );
}
add_action( 'init', 'reg_mymenu');

// Dodawanie do menu klasy <li class=""> [...]

function my_menu_li_class($classes, $item, $args) {
   if (property_exists($args, 'my_menu_li_class')) {
      $classes[] = $args->my_menu_li_class;
   }
   return $classes;
}
add_filter('nav_menu_css_class', 'my_menu_li_class', 1, 3);

// Dodawanie do menu klasy <li><a class=""> [...]

function my_menu_a_class( $attributes, $item, $args ) {
   if (property_exists($args, 'my_menu_a_class')) {
      $attributes['class'] = $args->my_menu_a_class;
   }
   return $attributes;
}
add_filter( 'nav_menu_link_attributes', 'my_menu_a_class', 1, 3 );

// Dodawanie do sub menu klasy <ul class=""> [...]

class My_Walker_Nav_Menu extends Walker_Nav_Menu {

  	function start_lvl(&$output, $depth = 0, $args = array()) {
  		$indent = str_repeat("\t", $depth);
     	$output .= "\n<ul class=\"dropdown-menu\">\n";
   	}

   	function start_el(&$output, $item, $depth = 0, $args = array(), $id = 0) {
       $item_html = '';
       parent::start_el($item_html, $item, $depth, $args);

       if ( $item->is_dropdown && $depth === 0 ) {
           $item_html = str_replace( '<a', '<a class="nav-link dropdown-toggle" data-bs-toggle="dropdown"', $item_html );
           $item_html = str_replace( '</a>', ' <b class="caret"></b></a>', $item_html );
       }

       $output .= $item_html;
    }

    function display_element($element, &$children_elements, $max_depth, $depth = 0, $args, &$output) {
        if ( $element->current )
        $element->classes[] = 'active';

        $element->is_dropdown = !empty( $children_elements[$element->ID] );

        if ( $element->is_dropdown ) {
            if ( $depth === 0 ) {
                $element->classes[] = 'dropdown';
            } elseif ( $depth === 1 ) {
                $element->classes[] = 'dropdown-menu';
            }
        }

    	parent::display_element($element, $children_elements, $max_depth, $depth, $args, $output);
    }
}

/* 
 *
 * Opcje motywu
 *
 */

class OpcjeSzablonu {
	private $opcje_szablonu_options;

	public function __construct() {
		add_action( 'admin_menu', array( $this, 'opcje_szablonu_add_plugin_page' ) );
		add_action( 'admin_init', array( $this, 'opcje_szablonu_page_init' ) );
	}

	public function opcje_szablonu_add_plugin_page() {
		add_menu_page(
			'Opcje szablonu', // page_title
			'Opcje szablonu', // menu_title
			'manage_options', // capability
			'opcje-szablonu', // menu_slug
			array( $this, 'opcje_szablonu_create_admin_page' ), // function
			'dashicons-admin-generic', // icon_url
			2 // position
		);
	}

	public function opcje_szablonu_create_admin_page() {
		$this->opcje_szablonu_options = get_option( 'opcje_szablonu_option_name' ); ?>

		<div class="wrap">
			<h2>Opcje szablonu</h2>
			<p></p>
			<?php settings_errors(); ?>

			<form method="post" action="options.php">
				<?php
					settings_fields( 'opcje_szablonu_option_group' );
					do_settings_sections( 'opcje-szablonu-admin' );
					submit_button();
				?>
			</form>
		</div>
	<?php }

	public function opcje_szablonu_page_init() {
		register_setting(
			'opcje_szablonu_option_group', // option_group
			'opcje_szablonu_option_name', // option_name
			array( $this, 'opcje_szablonu_sanitize' ) // sanitize_callback
		);

		add_settings_section(
			'opcje_szablonu_setting_section', // id
			'Settings', // title
			array( $this, 'opcje_szablonu_section_info' ), // callback
			'opcje-szablonu-admin' // page
		);

		add_settings_field(
			'telefon_1_0', // id
			'Telefon 1', // title
			array( $this, 'telefon_1_0_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'telefon_2_1', // id
			'Telefon 2', // title
			array( $this, 'telefon_2_1_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'email_2', // id
			'Email', // title
			array( $this, 'email_2_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'instagram_url_3', // id
			'Instagram URL', // title
			array( $this, 'instagram_url_3_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'instagram_4', // id
			'Instagram @', // title
			array( $this, 'instagram_4_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'facebook_url_5', // id
			'Facebook URL', // title
			array( $this, 'facebook_url_5_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'mapa_url_6', // id
			'Mapa URL', // title
			array( $this, 'mapa_url_6_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'nazwa_firmy_7', // id
			'Nazwa firmy', // title
			array( $this, 'nazwa_firmy_7_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'opis_firmy_pl_8', // id
			'Opis firmy PL', // title
			array( $this, 'opis_firmy_pl_8_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'opis_firmy_de_9', // id
			'Opis firmy DE', // title
			array( $this, 'opis_firmy_de_9_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'imi_i_nazwisko_10', // id
			'Imię i nazwisko', // title
			array( $this, 'imi_i_nazwisko_10_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'adres_11', // id
			'Adres', // title
			array( $this, 'adres_11_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'kod_pocztowy_12', // id
			'Kod pocztowy', // title
			array( $this, 'kod_pocztowy_12_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);

		add_settings_field(
			'nip_13', // id
			'NIP', // title
			array( $this, 'nip_13_callback' ), // callback
			'opcje-szablonu-admin', // page
			'opcje_szablonu_setting_section' // section
		);
	}

	public function opcje_szablonu_sanitize($input) {
		$sanitary_values = array();
		if ( isset( $input['telefon_1_0'] ) ) {
			$sanitary_values['telefon_1_0'] = sanitize_text_field( $input['telefon_1_0'] );
		}

		if ( isset( $input['telefon_2_1'] ) ) {
			$sanitary_values['telefon_2_1'] = sanitize_text_field( $input['telefon_2_1'] );
		}

		if ( isset( $input['email_2'] ) ) {
			$sanitary_values['email_2'] = sanitize_text_field( $input['email_2'] );
		}

		if ( isset( $input['instagram_url_3'] ) ) {
			$sanitary_values['instagram_url_3'] = sanitize_text_field( $input['instagram_url_3'] );
		}

		if ( isset( $input['instagram_4'] ) ) {
			$sanitary_values['instagram_4'] = sanitize_text_field( $input['instagram_4'] );
		}

		if ( isset( $input['facebook_url_5'] ) ) {
			$sanitary_values['facebook_url_5'] = sanitize_text_field( $input['facebook_url_5'] );
		}

		if ( isset( $input['mapa_url_6'] ) ) {
			$sanitary_values['mapa_url_6'] = sanitize_text_field( $input['mapa_url_6'] );
		}

		if ( isset( $input['nazwa_firmy_7'] ) ) {
			$sanitary_values['nazwa_firmy_7'] = sanitize_text_field( $input['nazwa_firmy_7'] );
		}

		if ( isset( $input['opis_firmy_pl_8'] ) ) {
			$sanitary_values['opis_firmy_pl_8'] = esc_textarea( $input['opis_firmy_pl_8'] );
		}

		if ( isset( $input['opis_firmy_de_9'] ) ) {
			$sanitary_values['opis_firmy_de_9'] = esc_textarea( $input['opis_firmy_de_9'] );
		}

		if ( isset( $input['imi_i_nazwisko_10'] ) ) {
			$sanitary_values['imi_i_nazwisko_10'] = sanitize_text_field( $input['imi_i_nazwisko_10'] );
		}

		if ( isset( $input['adres_11'] ) ) {
			$sanitary_values['adres_11'] = sanitize_text_field( $input['adres_11'] );
		}

		if ( isset( $input['kod_pocztowy_12'] ) ) {
			$sanitary_values['kod_pocztowy_12'] = sanitize_text_field( $input['kod_pocztowy_12'] );
		}

		if ( isset( $input['nip_13'] ) ) {
			$sanitary_values['nip_13'] = sanitize_text_field( $input['nip_13'] );
		}

		return $sanitary_values;
	}

	public function opcje_szablonu_section_info() {
		
	}

	public function telefon_1_0_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[telefon_1_0]" id="telefon_1_0" value="%s">',
			isset( $this->opcje_szablonu_options['telefon_1_0'] ) ? esc_attr( $this->opcje_szablonu_options['telefon_1_0']) : ''
		);
	}

	public function telefon_2_1_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[telefon_2_1]" id="telefon_2_1" value="%s">',
			isset( $this->opcje_szablonu_options['telefon_2_1'] ) ? esc_attr( $this->opcje_szablonu_options['telefon_2_1']) : ''
		);
	}

	public function email_2_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[email_2]" id="email_2" value="%s">',
			isset( $this->opcje_szablonu_options['email_2'] ) ? esc_attr( $this->opcje_szablonu_options['email_2']) : ''
		);
	}

	public function instagram_url_3_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[instagram_url_3]" id="instagram_url_3" value="%s">',
			isset( $this->opcje_szablonu_options['instagram_url_3'] ) ? esc_attr( $this->opcje_szablonu_options['instagram_url_3']) : ''
		);
	}

	public function instagram_4_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[instagram_4]" id="instagram_4" value="%s">',
			isset( $this->opcje_szablonu_options['instagram_4'] ) ? esc_attr( $this->opcje_szablonu_options['instagram_4']) : ''
		);
	}

	public function facebook_url_5_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[facebook_url_5]" id="facebook_url_5" value="%s">',
			isset( $this->opcje_szablonu_options['facebook_url_5'] ) ? esc_attr( $this->opcje_szablonu_options['facebook_url_5']) : ''
		);
	}

	public function mapa_url_6_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[mapa_url_6]" id="mapa_url_6" value="%s">',
			isset( $this->opcje_szablonu_options['mapa_url_6'] ) ? esc_attr( $this->opcje_szablonu_options['mapa_url_6']) : ''
		);
	}

	public function nazwa_firmy_7_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[nazwa_firmy_7]" id="nazwa_firmy_7" value="%s">',
			isset( $this->opcje_szablonu_options['nazwa_firmy_7'] ) ? esc_attr( $this->opcje_szablonu_options['nazwa_firmy_7']) : ''
		);
	}

	public function opis_firmy_pl_8_callback() {
		printf(
			'<textarea class="large-text" rows="5" name="opcje_szablonu_option_name[opis_firmy_pl_8]" id="opis_firmy_pl_8">%s</textarea>',
			isset( $this->opcje_szablonu_options['opis_firmy_pl_8'] ) ? esc_attr( $this->opcje_szablonu_options['opis_firmy_pl_8']) : ''
		);
	}

	public function opis_firmy_de_9_callback() {
		printf(
			'<textarea class="large-text" rows="5" name="opcje_szablonu_option_name[opis_firmy_de_9]" id="opis_firmy_de_9">%s</textarea>',
			isset( $this->opcje_szablonu_options['opis_firmy_de_9'] ) ? esc_attr( $this->opcje_szablonu_options['opis_firmy_de_9']) : ''
		);
	}

	public function imi_i_nazwisko_10_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[imi_i_nazwisko_10]" id="imi_i_nazwisko_10" value="%s">',
			isset( $this->opcje_szablonu_options['imi_i_nazwisko_10'] ) ? esc_attr( $this->opcje_szablonu_options['imi_i_nazwisko_10']) : ''
		);
	}

	public function adres_11_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[adres_11]" id="adres_11" value="%s">',
			isset( $this->opcje_szablonu_options['adres_11'] ) ? esc_attr( $this->opcje_szablonu_options['adres_11']) : ''
		);
	}

	public function kod_pocztowy_12_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[kod_pocztowy_12]" id="kod_pocztowy_12" value="%s">',
			isset( $this->opcje_szablonu_options['kod_pocztowy_12'] ) ? esc_attr( $this->opcje_szablonu_options['kod_pocztowy_12']) : ''
		);
	}

	public function nip_13_callback() {
		printf(
			'<input class="regular-text" type="text" name="opcje_szablonu_option_name[nip_13]" id="nip_13" value="%s">',
			isset( $this->opcje_szablonu_options['nip_13'] ) ? esc_attr( $this->opcje_szablonu_options['nip_13']) : ''
		);
	}

}
if ( is_admin() )
	$opcje_szablonu = new OpcjeSzablonu();
