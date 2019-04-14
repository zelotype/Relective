/* eslint-disable */
<template>
    <div id="navbar">
        <div>
            <div id="overlay2" v-on:click.self="closeCourse">
                <b-container style="padding-top:5%">
                    <b-row>

                        <b-col>
                            <!-- Using modifiers -->
                            <b-button block href="#" v-b-toggle.accordion-1 id="btnCourse">หลักสูตร 57</b-button>

                        </b-col>
                        <b-col>
                            <!-- Using value -->
                            <b-button block href="#" v-b-toggle.accordion-2 id="btnCourse">หลักสูตร 59</b-button>


                        </b-col>
                        <b-col cols="12" style="margin-top:10px">
                            <!-- Element to collapse -->
                            <b-collapse id="accordion-1" accordion="my-accordion" role="tabpanel">
                                <b-container class="bv-example-row">
                                    <b-row v-for="text in case57" style="margin-bottom:10px">
                                        <b-col cols="12" style="background-color:white;color:#044389">
                                            <h3>{{text.title}}</h3>
                                        </b-col>
                                        <b-col cols="4" v-for="index in text.list_name">
                                            <b-dropdown split split-variant="outline-light" variant="light"
                                                :text="index.type_name" class="m-2">
                                                <b-container style="height:100px;overflow-y:scroll;text-align:left">
                                                    <b-dropdown-item v-for="text in index.subject_list"
                                                        style="color:#044389;text-align:left;padding-left:0;padding-right:0">{{text.subject_id}} | {{text.subject_name}}
                                                    </b-dropdown-item>
                                                </b-container>

                                            </b-dropdown>
                                        </b-col>

                                    </b-row>
                                </b-container>
                            </b-collapse>
                            <b-collapse id="accordion-2" accordion="my-accordion" role="tabpanel">
                                <b-container class="bv-example-row">
                                    <b-row v-for="text in case59 ">
                                        <b-col cols="12">
                                            <h3>{{text.title}}</h3>
                                        </b-col>
                                        <b-col v-for="index in text.list_name"><button id="subject">

                                                <!-- <b-dropdown id="dropdown-left" text="Left align" variant="primary"
                                                    class="m-2">
                                                    <b-dropdown-item href="#">Action</b-dropdown-item>
                                                </b-dropdown> -->
                                            </button>
                                        </b-col>

                                    </b-row>
                                </b-container>
                            </b-collapse>
                        </b-col>
                    </b-row>
                </b-container>

            </div>
            <b-navbar style="background-color:#FF9000;z-index:1">
                <b-navbar-nav>
                    <b-nav-item href="#">Home</b-nav-item>

                    <!-- Navbar dropdowns -->
                    <b-button v-on:click="showCouse" id="course">หลักสูตร</b-button>
                </b-navbar-nav>
                <b-navbar-nav class="ml-auto">
                    <b-navbar-brand v-on:click="openNav" style="padding:0;margin:auto">
                        <img style="border-radius:50%;height:4vh"
                            src="https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.0-1/c160.0.960.960a/31466723_1748423975212059_7301258718878892032_o.jpg?_nc_cat=105&_nc_eui2=AeHEVP1Gug6fG0HzuKb9vhvtnPZltQCqeNWp3dqfmSEbbAELoB_ZL_dRX6TCrGwuWZrJ91gXPTBNcbe4Y4PvpmTmQC8v5u-3P9k9oTEUE8wfxQ&_nc_ht=scontent.fbkk2-8.fna&oh=774be4d595e55bda6e68b0d426fbb5a0&oe=5D42D7C6"
                            alt="Kitten">
                    </b-navbar-brand>
                </b-navbar-nav>

            </b-navbar>
        </div>
        <div id="overlay" v-on:click="closeNav"></div>
        <div id="mySidenav" class="sidenav">
            <a href="javascript:void(0)" class="closebtn" v-on:click="closeNav" style="z-index:10">&times;</a>
            <b-container id="grids">
                <b-row>
                    <b-col cols="12" style="text-align:center;">

                        <img src="https://scontent.fbkk2-8.fna.fbcdn.net/v/t1.0-1/c160.0.960.960a/31466723_1748423975212059_7301258718878892032_o.jpg?_nc_cat=105&_nc_eui2=AeHEVP1Gug6fG0HzuKb9vhvtnPZltQCqeNWp3dqfmSEbbAELoB_ZL_dRX6TCrGwuWZrJ91gXPTBNcbe4Y4PvpmTmQC8v5u-3P9k9oTEUE8wfxQ&_nc_ht=scontent.fbkk2-8.fna&oh=774be4d595e55bda6e68b0d426fbb5a0&oe=5D42D7C6"
                            width="30%" style="border-radius: 50%;margin:10px">
                    </b-col>
                </b-row>

                <b-row>
                    <b-col cols="12">
                        <h5>PRAPAWIT PATTHASIRIVICHOT</h5>
                    </b-col>
                    <b-col cols="12">FACULTY: INFORMATION TECHNOLOGY</b-col>
                    <b-col>3 of 3</b-col>
                </b-row>
            </b-container>
            <b-container-fluid style="bottom:0;position:absolute;width:100%;margin:2px" id="navBot">
                <b-row>
                    <b-col cols="12" style="margin:2px">
                        <b-button variant="info" id="navBtn" v-on:click="toInformationForm">แก้ไขข้อมูลส่วนตัว
                        </b-button>
                    </b-col>
                    <b-col cols="12" style="margin:2px">
                        <b-button variant="danger" id="navBtn" v-on:click="logOut">ออกจากระบบ</b-button>
                    </b-col>
                </b-row>

            </b-container-fluid>
        </div>
        <router-view></router-view>
    </div>
</template>
<script>
    export default {
        name: "navbar",
        props: {
            msg: String
        },
        data() {
            return {
                case57: [{
                        title: "กลุ่มวิชาวิทยาศาสตร์กับคณิตศาสตร์",
                        list_name: [{
                            type_name: "สาขาวิชาคณิตศาสตร์และสถิติ",
                            subject_list: [{
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "สถิติในชีวิตประจำวัน",
                                subject_id: "90101003"
                            }, {
                                subject_name: "คณิตศาสตร์กับเทคโนโลยี",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, {
                                subject_name: "คณิตศาสตร์ในชีวิตประจำวัน",
                                subject_id: "90101002"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาคอมพิวเตอร์และสารสนเทศ",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาเทคโนโลยีและการจัดการ",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาวิทยาศาสตร์ทั่วไป",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาเคมี",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาฟิสิกส์",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาชีววิทยา",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, {
                            type_name: "สาขาวิชาพลังงานและสิ่งแวดล้อม",
                            subject_list: [{
                                subject_name: "]"
                            }, ]
                        }, ]
                    }, {
                        title: "กลุ่มวิชาภาษา",
                        list_name: [{
                            type_name: "สาขาวิชาภาษาอังกฤษ",
                            subject_list: [{
                                subject_name: ""
                            }, ]
                        }, {
                            type_name: "สาขาวิชาภาษาไทย",
                            subject_list: [{
                                subject_name: ""
                            }, ]
                        }, ]
                    }, {
                        title: "กลุ่มวิชามนุษศาสตร์",
                        list_name: [{
                                type_name: "สาขาวิชาปรัชญา",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                            {
                                type_name: "สาขาวิชาจิตวิทยา",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                            {
                                type_name: "สาขาวิชาพลศึกษาและนันทนาการ",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                            {
                                type_name: "สาขาวิชาบรรณารักษ์ศาสตร์และสารนิเทศศาสตร์",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                            {
                                type_name: "สาขาวิชาประวัติศาสตร์ ศิลปะ และวัฒนธรรม",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                        ]
                    },
                    {
                        title: "กลุ่มสังคมศาสตร์",
                        list_name: [{
                                type_name: "สาขาวิชาเศรษฐศาสตร์",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            }, {
                                type_name: "สาขาวิชากฏหมาย",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                            {
                                type_name: "สาขาวิชาสังคมวิทยาและรัฐศาสตร์",
                                subject_list: [{
                                    subject_name: ""
                                }, ]
                            },
                        ]
                    }
                ],
                case59: [{
                    title: "ภาษาอังกฤษ",
                    list_name: ["ชื่อวิชา1", "ชื่อวิชา2", "ชื่อวิชา3", "ชื่อวิชา4", "ชื่อวิชา5", "ชื่อวิชา6"]
                }, {
                    title: "ภาษาอังกฤษ2",
                    list_name: ["ชื่อวิชา1", "ชื่อวิชา2", "ชื่อวิชา3", "ชื่อวิชา4", "ชื่อวิชา5", "ชื่อวิชา6"]
                }, {
                    title: "ภาษาอังกฤษ3",
                    list_name: ["ชื่อวิชา1", "ชื่อวิชา2", "ชื่อวิชา3", "ชื่อวิชา4", "ชื่อวิชา5", "ชื่อวิชา6"]
                }],
            }
        },
        methods: {

            openNav() {
                if (screen.width < 450) {
                    document.getElementById("mySidenav").style.width = "100%";
                } else {
                    document.getElementById("mySidenav").style.width = "400px";
                }
                document.getElementById("overlay").style.display = "block";
                document.getElementById("grids").style.display = "block";
                document.getElementById("navBot").style.display = "block";
            },
            closeNav() {

                document.getElementById("mySidenav").style.width = "0";
                document.getElementById("overlay").style = "none";
                document.getElementById("grids").style.display = "none";
                document.getElementById("navBot").style.display = "none";
            },
            toInformationForm() {
                this.$router.push('/InformationForm')
            },
            logOut() {
                this.$router.push('/')
            },
            showCouse() {
                if (document.getElementById("overlay2").style.display == "block") {
                    document.getElementById("overlay2").style.display = "none";
                } else {
                    document.getElementById("overlay2").style.display = "block";
                }

            },
            closeCourse() {
                document.getElementById("overlay2").style.display = "none";
            }

        }
    };
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    #dropdown-left {
        background-color: #FF9000 !important
    }

    #subject {
        background-color: transparent;
        border: transparent;
        color: white;
    }

    #btnCourse {
        background-color: #DAD6D6;
        color: #044389;
    }

    #course {
        background-color: transparent;
        border: transparent;
        text-decoration: underline;
    }

    .dropdown:hover .dropdown-menu {
        display: block;
    }

    #navBtn {
        width: 100%
    }

    #overlay {
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background-color: #044389;
        transition: 0.5s;
        display: none;
        opacity: 0.6;
        z-index: 1;
    }

    #overlay2 {
        margin-top: 1%;
        position: absolute;
        top: 0;
        bottom: 0;
        left: 0;
        right: 0;
        background-color: #044389;
        transition: 0.5s;
        display: none;
        opacity: 0.95;
        z-index: 1;
        overflow-y: scroll;
    }

    #navbar {
        width: 100%;
        z-index: 2000;
        color: white;
        overflow-y: scroll;
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

        #mySidenav {
            width: 100%
        }

        #navbar {
            margin-right: 100%
        }
    }

    .dropdown-menu dropdown-menu-right.show {
        width: 1000px !important;
    }

    body,
    html {
        margin: 0;
        overflow: hidden;
        height: 100%;
    }

    @media (min-width: 768px) {
        #overlay2 {
            position: absolute;
            overflow-y: scroll;
        }

        /* #right {
    position: absolute;
    top: 0;
    bottom: 0;
    right: 0;
    overflow-y: scroll;
    width: 25%;
  } */
    }
</style>