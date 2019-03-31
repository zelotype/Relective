<template>
    <div class="sidenav">
        <b-container class="bv-example-row">
            <b-row>
                <b-col cols="12" id="text_style"><img src="https://mpics.mgronline.com/pics/Images/562000000391117.JPEG" style="border-radius:50%;width:50%;border: 5px solid orange;"></b-col>
                <b-col cols="12" id="text_style"><h4>Prapawit Patthasirivichot</h4></b-col>
            </b-row>

            <b-row>
                <b-col>1 of 3</b-col>
                <b-col>2 of 3</b-col>
                <b-col>3 of 3</b-col>
            </b-row>
        </b-container>
    </div>
</template>
<script>
    export default {
        name: 'side_navbar',
        props: {
            msg: String
        }
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    .sidenav {
        z-index: -100;
        width: 20%;
        top: 0;
        bottom: 0;
        padding-top: 5%;
        background-color: white;
        position: absolute
    }

    /* @media screen and (max-height: 450px) {
        .sidenav {
            padding-top: 15px;
        }

        .sidenav a {
            font-size: 18px;
        }
    } */
    #text_style{
        text-align: center;
        margin-top: 5px;
    }
</style>