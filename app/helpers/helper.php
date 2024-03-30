<?php
namespace App\helpers;
use Illuminate\Support\Str;
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

public static function menus($menus, $paren_id = 0) :string
    {
        $html = '';
        foreach ($menus as $key => $menu) {
            if ($menu->paren_id == $paren_id) {
                $html .= '
                    <li>
                    <a href="/hoclaravel/danh-muc/' . $menu->id . '-' . Str::slug($menu->name, '-') . '.html"> 
                    ' . $menu->name . '
                </a>';
                unset($menus[$key]);

                if (self::isChild($menus, $menu->id)) {
                    $html .= '<ul class="sub-menu">';
                    $html .= self::menus($menus, $menu->id);
                    $html .= '</ul>';
                }

                $html .= '</li>';
            }
        }

        return $html;
    }

    public static function isChild($menus, $id) : bool
    {
        foreach ($menus as $menu) {
            if ($menu->paren_id == $id) {
                return true;
            }
        }

        return false;
    }

    public static function price($price = 0, $priceSale = 0)
    {
        if ($priceSale != 0) return number_format($priceSale);
        if ($price != 0)  return number_format($price);
        return '<a href="/lien-he.html">Liên Hệ</a>';
    }


}