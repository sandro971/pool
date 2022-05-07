<?php

namespace Drupal\mymod_module\Plugin\Block;
use Drupal\Core\Block\BlockBase;


/**
 * Provide a `Hello` Block.
 * 
 * @Block(
 *  id="hello_block",
 *  admin_label = @Translation("Hello Block"),
 *  category = @Translation("Hello Block")
 * )
*/

class HelloBlock extends BlockBase{
    /**
     * {@inheritdoc}
     */
    public function build(){
        return [
            'markup' => $this.t('Hello World Block')
        ];
    }
}