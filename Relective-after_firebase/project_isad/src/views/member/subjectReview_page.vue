/* eslint-disable */
<template>
    <div class="about">
        <div>
            <bg_1stPage></bg_1stPage>
            <navbar></navbar>
        </div>
        <div style="z-index:-10;margin-top:1%">
            <b-container>
                <b-row>
                    <b-col cols="12" style="width:100%;margin-bottom:1%">
                        <b-card header-tag="header" footer-tag="footer">
                            <h2 slot="header" class="mb-0">
                                <b-container>
                                    <b-row>
                                        <b-col cols="6">
                                            <h2>
                                                หมวดสังคมศาตร์ - 3 หน่วยกิต
                                            </h2>
                                        </b-col>
                                        <b-col cols="6">
                                            <h5>
                                                <b-container-fluid style="text-align:right">
                                                    <b-row>
                                                        <b-col cols="2">
                                                            |5.0
                                                        </b-col>
                                                        <b-col cols="2">
                                                            <b-button id="like" v-model="heart1" @click="heart(1)">
                                                                <img v-if="!heart1" id="likes"
                                                                    src="../../assets/like.png" />
                                                                <img v-else id="likes" src="../../assets/liked.png" />
                                                            </b-button>
                                                        </b-col>
                                                        <b-col cols="2">
                                                            <b-button id="like" v-model="heart2" @click="heart(2)">
                                                                <img v-if="!heart2" id="likes"
                                                                    src="../../assets/like.png" />
                                                                <img v-else id="likes" src="../../assets/liked.png" />
                                                            </b-button>
                                                        </b-col>
                                                        <b-col cols="2">
                                                            <b-button id="like" v-model="heart3" @click="heart(3)">
                                                                <img v-if="!heart3" id="likes"
                                                                    src="../../assets/like.png" />
                                                                <img v-else id="likes" src="../../assets/liked.png" />
                                                            </b-button>
                                                        </b-col>
                                                        <b-col cols="2">
                                                            <b-button id="like" v-model="heart4" @click="heart(4)">
                                                                <img v-if="!heart4" id="likes"
                                                                    src="../../assets/like.png" />
                                                                <img v-else id="likes" src="../../assets/liked.png" />
                                                            </b-button>
                                                        </b-col>
                                                        <b-col cols="2">
                                                            <b-button id="like" v-model="heart5" @click="heart(5)">
                                                                <img v-if="!heart5" id="likes"
                                                                    src="../../assets/like.png" />
                                                                <img v-else id="likes" src="../../assets/liked.png" />
                                                            </b-button>
                                                        </b-col>


                                                    </b-row>
                                                </b-container-fluid>
                                            </h5>
                                        </b-col>
                                    </b-row>
                                </b-container>
                            </h2>
                            <b-card-text>
                                <p>
                                    ศึกษาความหมายของกระบวนการบริหาร โดยเป็นเนื้อหาในองค์การธุรกิจ
                                    การใช้ทรัพยากรทางการบริหารให้เป็นประโยชน์ต่อธุรกิจ รูปแบบของการดำเนินงานทางธุรกิจ
                                    การจัดองค์การ การสร้างมนุษยสัมพันธ์ ความเป็นผู้นำและการจูงใจบุคคลภายในองค์การ
                                    และการนำหลักการพื้นฐานและความรู้ทั่วไปทางด้านการตลาด การบริหารงานบุคคล
                                    การบริหารการเงิน
                                    และการบัญชีมาใช้ในการบริหารธุรกิจขององค์การ
                                </p>
                            </b-card-text>

                            <em slot="footer">
                                <b-button href="#" variant="primary">เขียนรีวิว</b-button>
                            </em>
                        </b-card>
                    </b-col>
                    <b-col cols="12" style="margin-bottom:1%">
                        <b-card title="วิชานี้ง่ายมาก ได้ A มา">
                            <b-card-text>ข้อสอบวิชานี้ออกตามสไลด์เลย เช็คชื่อทุกคาบ ข้อสอบง่ายมาก อ่านสไลด์ไปก็ทำได้แล้ว
                            </b-card-text>
                            <b-form inline>
                                <label class="sr-only" for="inline-form-input-name">Name</label>
                                <b-input id="inline-form-input-name" class="mb-2 mr-sm-2 mb-sm-0" placeholder="Jane Doe"
                                    style="width:80%"></b-input>
                                <b-button variant="primary">แสดงความคิดเห็น</b-button>
                            </b-form>
                        </b-card>
                    </b-col>
                </b-row>
            </b-container>
        </div>
    </div>
</template>
<script>
    import bg_1stPage from "../../components/background_1stPage.vue";
    import navbar from '../../components/navbar.vue'
    export default {
        data() {
            return {
                heart1: false,
                heart2: false,
                heart3: false,
                heart4: false,
                heart5: false,
            }
        },
        name: "subjectReview_page",
        components: {
            bg_1stPage,
            navbar,
        },
        computed: {

        },
        methods: {
            heart(index) {
                switch (index) {
                    case 1:
                        this.heart1 = !this.heart1
                        this.heart2 = false
                        this.heart3 = false
                        this.heart4 = false
                        this.heart5 = false
                        break;
                    case 2:
                        if (this.heart2 == true) {
                            this.heart1 = false
                            this.heart2 = false
                        } else {
                            this.heart1 = true
                            this.heart2 = true
                        }

                        this.heart3 = false
                        this.heart4 = false
                        this.heart5 = false

                        break;
                    case 3:
                        if (this.heart3 == false) {
                            this.heart1 = true
                            this.heart2 = true
                            this.heart3 = true
                        }else{
                            this.heart1 = false
                            this.heart2 = false
                            this.heart3 = false
                        }
                        this.heart4 = false
                        this.heart5 = false

                        break;
                    case 4:
                        if(this.heart4 == false){
                            this.heart1 = true
                        this.heart2 = true
                        this.heart3 = true
                        this.heart4 = true
                        }else{
                            this.heart1 = false
                        this.heart2 = false
                        this.heart3 = false
                        this.heart4 = false
                        }
                        this.heart5 = false

                        break;
                    case 5:
                        if(this.heart5 == false){
                            this.heart1 = true
                        this.heart2 = true
                        this.heart3 = true
                        this.heart4 = true
                        this.heart5 = true
                        }else{
                            this.heart1 = false
                        this.heart2 = false
                        this.heart3 = false
                        this.heart4 = false
                        this.heart5 = false
                        }
                        break;

                    default:
                        break;
                }
                console.log(index)
            }
        },
    }
</script>
<style scoped>
    .b-col {
        margin-bottom: 1%;
    }

    .card-footer {
        text-align: center;
    }

    #like {
        background-color: transparent;
        border: transparent;
        width: 50%;
        padding: 0;
    }

    #likes {
        width: 100%;
    }
</style>