<?php
namespace App\helpers;
class helper
{
public static function menu($menus, $paren_id = 0, $char = '') {
    $html = '';
    foreach ($menus as $key => $menu) {
        if ($menu->paren_id == $paren_id) {
            $html .= '
                <tr>
                    <td>' . $menu->id . '</td>
                    <td>' . $char . $menu->name . '</td>
                    <td>'. self::active($menu->active) .'</td>
                    <td>' . $menu->updated_at . '</td>
                    <td>
                        <a class="btn btn-primary btn-sm" 
                         href ="/hoclaravel/admin/menus/edit/'.$menu->id.'">
                        <i class="fas fa-edit"></i>
                        </a>
                        <a class="btn btn-danger btn-sm" href=#
                        onclick="removeRow(' . $menu->id . ', \'' . route('menu.destroy'). '\');">
                            <i class="fas fa-trash"></i>
                        </a>
                    </td>
                </tr>
            ';
            unset($menus[$key]);
            $html .= self::menu($menus, $menu->id, $char . '--');
        }
    }
    return $html;
}
public static function active($active = 0): string {
    return $active == 0 ? '<span class="btn btn-danger btn-xs">NO</span>' :
                          '<span class="btn btn-success btn-xs">YES</span>';
}


}