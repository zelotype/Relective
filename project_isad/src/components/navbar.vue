<template>
    <div id="navbar">
        <b-navbar toggleable="lg" type="dark" variant="info" style="background-color:#ff8228 !important">
            <b-navbar-brand href="#">LOGO</b-navbar-brand>

            <b-navbar-toggle target="nav-collapse"></b-navbar-toggle>

            <b-collapse id="nav-collapse" is-nav>
                <!-- <b-navbar-nav>
                    <b-nav-item href="#">Link</b-nav-item>
                    <b-nav-item href="#" disabled>Disabled</b-nav-item>
                </b-navbar-nav> -->

                <!-- Right aligned nav items -->
                <b-navbar-nav class="ml-auto">
                    <b-nav-form>
                        <b-form-input size="sm" class="mr-sm-2" placeholder="Search"></b-form-input>
                        <b-button size="sm" class="my-2 my-sm-0" type="submit">Search</b-button>
                    </b-nav-form>
                    <b-nav-item-dropdown right>
                        <!-- Using 'button-content' slot -->
                        <template slot="button-content"><em>User</em></template>
                        <b-dropdown-item href="#">Profile</b-dropdown-item>
                        <b-dropdown-item href="#">Sign Out</b-dropdown-item>
                    </b-nav-item-dropdown>
                    <b-nav-item v-on:click="openNav">
                        Test
                    </b-nav-item>
                </b-navbar-nav>
            </b-collapse>
        </b-navbar>
        <div id="overlay" v-on:click="closeNav"></div>
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" v-on:click="closeNav">&times;</a>
            <b-container class="bv-example-row">
                <b-row>
                    <b-col cols="12" style="text-align:center;"><img src="https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.0-1/c160.0.960.960a/31466723_1748423975212059_7301258718878892032_o.jpg?_nc_cat=105&_nc_eui2=AeHEVP1Gug6fG0HzuKb9vhvtnPZltQCqeNWp3dqfmSEbbAELoB_ZL_dRX6TCrGwuWZrJ91gXPTBNcbe4Y4PvpmTmQC8v5u-3P9k9oTEUE8wfxQ&_nc_ht=scontent.fbkk2-8.fna&oh=774be4d595e55bda6e68b0d426fbb5a0&oe=5D42D7C6" width="30%" style="border-radius: 50%;"></b-col>
                    <b-col>2 of 2</b-col>
                </b-row>

                <b-row>
                    <b-col>1 of 3</b-col>
                    <b-col>2 of 3</b-col>
                    <b-col>3 of 3</b-col>
                </b-row>
            </b-container>
        </div>

    </div>
</template>
<script>
    export default {
        name: 'navbar',
        props: {
            msg: String
        },
        methods: {
            openNav() {
                document.getElementById("mySidenav").style.width = "400px";
                document.getElementById("navbar").style.marginRight = "400px";
                document.getElementById('overlay').style.display = "block";
            },
            closeNav() {
                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("navbar").style.marginRight = "0";
                document.getElementById('overlay').style = "none";
            }
        },
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    #overlay {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background-color: black;
        transition: 0.5s;
        display: none;
        opacity: 0.6;
    }

    #navbar {
        width: 100%;
        z-index: 2000;
    }

    .sidenav {
        height: 100%;
        width: 0;
        position: absolute;
        z-index: 1;
        top: 0;
        right: 0;
        background-color: white;
        overflow-x: hidden;
        transition: 0.5s;
        padding-top: 30px;
    }

    .sidenav a {
        padding: 8px 8px 8px 32px;
        text-decoration: none;
        font-size: 25px;
        color: #818181;
        display: block;
        transition: 0.3s;
    }

    .sidenav a:hover {
        color: #f1f1f1;
    }

    .sidenav .closebtn {
        position: absolute;
        top: 0;
        right: 25px;
        font-size: 36px;
        margin-left: 50px;
    }

    @media screen and (max-height: 450px) {
        .sidenav {
            padding-top: 15px;
        }

        .sidenav a {
            font-size: 18px;
        }
    }
</style>