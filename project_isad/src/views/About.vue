<template>
  <div class="about">
    <bg_1stPage></bg_1stPage>
    <b-form @submit="onSubmit" @reset="onReset" v-if="show" id="Form">
      <b-container class="bv-example-row">
        <b-row>
          <b-col md="6" cols="12">
            <b-form-group id="exampleInputGroup2" label="Your First Name:" label-for="exampleInput2">
              <b-form-input id="exampleInput2" type="text" v-model="form.fname" required placeholder="Enter First name" readonly=""/>
            </b-form-group>
          </b-col>
          <b-col md="6" cols="12">
            <b-form-group id="exampleInputGroup2" label="Your Last Name:" label-for="exampleInput2">
              <b-form-input id="exampleInput2" type="text" v-model="form.lname" required placeholder="Enter Last name" readonly=""/>
            </b-form-group>
          </b-col>

        </b-row>
      </b-container>
    </b-form>

  </div>
</template>
<script>
  import HelloWorld from "../components/HelloWorld"
  import bg_1stPage from "../components/background_1stPage";
  export default {
    name: "About",
    components: {
      bg_1stPage
    },
    data() {
      return {
        form: {
          email: '',
          fname: '',
          lname: '',
          food: null,
          checked: []
        },
        foods: [{
          text: 'Select One',
          value: null
        }, 'Carrots', 'Beans', 'Tomatoes', 'Corn'],
        show: true
      }

    },
    methods: {
      onSubmit(evt) {
        evt.preventDefault()
        alert(JSON.stringify(this.form))
      },
      onReset(evt) {
        evt.preventDefault()
        /* Reset our form values */
        this.form.email = ''
        this.form.name = ''
        this.form.food = null
        this.form.checked = []
        /* Trick to reset/clear native browser form validation state */
        this.show = false
        this.$nextTick(() => {
          this.show = true
        })
      }
    }

  }
</script>
<style scoped>
  .bv-example-row {
    margin: auto;
    background-color: white
  }

  #Form {
    padding: 5%;
  }
  #exampleInput2{
    
  }
</style>