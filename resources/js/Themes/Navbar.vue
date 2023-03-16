<template lang="">
    <header class="mb-5">
        <div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6"><img
                            class="imgLogo"
                            src="https://ptagafood.com/assets/pages/login/img/Takemori_new.jpg"
                            alt="Logo"
                    />
                </div>
                <label style="font-weight: bold;vertical-align: middle;"></label>
                <div class="col-lg-6">
                    </div>
               
                </div>
                <div class="header-top-right">
                    <div class="dropdown">
                        <a
                            href="#"
                            id="topbarUserDropdown"
                            class="user-dropdown d-flex align-items-center dropend dropdown-toggle"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                        >
                            <div class="avatar avatar-md2">
                         
                            </div>
                            <div class="text">
                                <h6 class="user-dropdown-name">John Ducky</h6>
                           
                            </div>
                        </a>
                        <ul
                            class="dropdown-menu dropdown-menu-end shadow-lg"
                            aria-labelledby="topbarUserDropdown"
                        >
                            <li>
                                <a class="dropdown-item" href="#">My Account</a>
                            </li>
                            <li>
                                <a class="dropdown-item" href="#">Settings</a>
                            </li>
                            <li><hr class="dropdown-divider" /></li>
                            <li>
                                <Link
                                    class="dropdown-item"
                                    :href="route('logout')"
                                    method="post"
                                    >Logout
                                </Link>
                            </li>
                        </ul>
                    </div>

                    <!-- Burger button responsive -->
                    <a href="#" class="burger-btn d-block d-xl-none">
                        <i class="bi bi-justify fs-3"></i>
                    </a>
                </div>
            </div>
        </div>
        <nav class="main-navbar">
            <div class="container">
                <ul>
                    <li class="menu-item">
                        <a href="index.html" class="menu-link">
                            <img
                                class="imgIcon"
                                src="https://ptagafood.com/assets/img_menu/order.png"
                                alt=""
                            />
                            <span>Order</span>
                        </a>
                    </li>
                    

                    
                    <li class="menu-item has-sub">
                        <a href="#" class="menu-link">
                            <img
                                class="imgIcon"
                                src="https://ptagafood.com/assets/img_menu/stack.png"
                                alt=""
                            />
                            <span>Meja</span>
                        </a>
                        <div class="submenu">
                            <!-- Wrap to submenu-group-wrapper if you want 3-level submenu. Otherwise remove it. -->
                            <div class="submenu-group-wrapper">
                                <ul class="submenu-group">
                                    <li class="submenu-item">
                                        <Link
                                            :href="route('tes')"
                                            class="submenu-link"
                                        >
                                            Tes
                                        </Link>
                                    </li>

                                    <li class="submenu-item">
                                        <Link
                                            :href="route('menu')"
                                            class="submenu-link"
                                        >
                                            Menu
                                        </Link>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </nav>
    </header>
</template>
<script>
import { Link } from "@inertiajs/inertia-vue3";
export default {
    components: {
        Link,
    },
};
</script>
