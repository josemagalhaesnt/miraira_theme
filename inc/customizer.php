<?php

function wp_miraira_customizer($wp_customize){
    
    //Copyright
    $wp_customize->add_section(
        'sec_copyright', array(
            'title'=>'Copyright',
            'description'=>'Copyright Section'
        )
    );
    $wp_customize->add_setting(
        'set_copyright', array(
            'type'=>'theme_mod',
            'default'=>'Copyright - ',
            'sanitize_callback'=>'wp_filter_nohtml_kses'
        )
    );
    $wp_customize->add_control(
        'set_copyright', array(
           'label'=> 'Copyright'
        )
    );
}