<template>
    <div class="sidenav">

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
        height: 100%;
        width: 80%;
        background-color: white;
        overflow-x: hidden;
        padding-top: 20px;
    }
    /* @media screen and (max-height: 450px) {
        .sidenav {
            padding-top: 15px;
        }

        .sidenav a {
            font-size: 18px;
        }
    } */
</style>