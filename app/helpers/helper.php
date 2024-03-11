<?php
namespace App\helpers;
class helper
{
        public static function menu($menus, $paren_id = 0, $char = '')
    {
        $html = '';
        foreach ($menus as $key => $menu) {
            if ($menu->paren_id == $paren_id) {
                $html .= '
            <tr>
                <td>' . $menu->id .'</td>
                <td>' . $char . $menu->name .'</td>
                <td>' . $menu->active .'</td>
                <td>' . $menu->updated_at .'</td>
                <td>&nbsp;</th>
            </tr>
                ';
                unset($menus[$key]);
                $html .= self::menu($menus,$menu->id,$char.='--');
            }
        }
        return $html;
    }
}