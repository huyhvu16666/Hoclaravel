<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Services\Menu\MenuServices;
use App\Http\Services\Slider\SliderService;

class MenuController extends Controller
{
    protected $slider;
    protected $menuService;

    public function __construct(SliderService $slider,MenuServices $menuService)
    {
       $this->slider = $slider;
       $this->menuService = $menuService;
    }

    public function index(Request $request, $id, $slug = '')
    {
        $menu = $this->menuService->show();
        $products = $this->menuService->getProduct($menu, $request);

        return view('menu', [
            'title' => $menu->name,
            'sliders' => $this->slider->show(),
            'products' => $products,
            'menus'  => $menu
        ]);
    }
}
