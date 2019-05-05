<template>
  <div class="about">
    <b-form @submit="onSubmit" @reset="onReset" v-if="show" id="Form">
      <b-container class="bv-example-row" style="border-radius:5px;">
        <b-row>
          <b-col class="my-2" cols="12" style="text-align:center">
            <div class="image-preview" v-if="imageData.length > 0">
              <img class="preview" :src="imageData">
            </div>
            <div v-else id="profile"></div>
            <input class="inputfile" id="file" type="file" @change="previewImage" accept="image/*"
              style="background-color:orange;color:white;padding:0.5%;">

            <label for="file" style="margin:auto;"><img src="../assets/icon_upload.svg" width="6%"> Choose
              a file</label>


          </b-col>
          <b-col class="my-2" cols="12">
            <b-form-group id="exampleInputGroup2" label="ชื่อ - นามสกุล : " label-for="exampleInput2">
              <b-form-input id="exampleInput2" type="text" v-model="form.fname" required placeholder="ชื่อ"
                readonly="" />
            </b-form-group>
          </b-col>
          <b-col class="my-2" cols="12">
            <b-form-group id="exampleInputGroup2" label="คณะ : " label-for="exampleInput2">
              <b-form-input id="exampleInput2" type="text" v-model="form.lname" required placeholder="คณะ"
                readonly="" />
            </b-form-group>
          </b-col>
          <b-col class="my-2" cols="4">
            <b-form-group id="exampleInputGroup2" label="ชั้นปี : " label-for="exampleInput2">
              <!-- <b-form-select v-model="selected" :options="years"/> -->
              <b-form-input id="exampleInput2" type="text" v-model="selected" required placeholder="คณะ" readonly="" />
            </b-form-group>
          </b-col>
          <b-col class="my-2" cols="12">
            <b-form-group id="exampleInputGroup2" label="สาขา : " label-for="exampleInput2" v-on:change="major_name">
              <b-form-select v-model="majors" :options="major" />
            </b-form-group>
          </b-col>
          <b-col class="my-2" cols="12">
            <b-form-group id="exampleInputGroup2" label="หลักสูตร :" label-for="exampleInput2">
              <b-form-input id="exampleInput2" type="text" v-model="cylybus" required placeholder="สาขา" readonly="" />
            </b-form-group>
          </b-col>
          <b-col class="my-2" cols="12" v-for="text in gen_class">
            <b-form-group id="exampleInputGroup2" :label="text.name" label-for="exampleInput2">
              <b-form-select v-model="text.status" :options="text.list"/>
            </b-form-group>
          </b-col>

        </b-row>
        <button type="submit">button</button>
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
        imageData: "",
        state: -1,
        gen_all: [null, null, null, null, null],
        cylybus: "59",
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
        show: true,
        selected: 1,
        years: [{
            value: 1,
            text: '1'
          },
          {
            value: 2,
            text: '2'
          },
          {
            value: 3,
            text: '3'
          },
          {
            value: 4,
            text: '4'
          },
          {
            value: 5,
            text: '5'
          },
          {
            value: 6,
            text: '6'
          }, {
            value: 7,
            text: '7'
          },
          {
            value: 8,
            text: '8'
          },
        ],
        majors: 1,
        major: [{
          value: 1,
          text: "เทคโนโลยีสารสนเทศ"
        }, {
          value: 2,
          text: "สาขาวิชาวิทยาการข้อมูลและการวิเคราะห์เชิงธุรกิจ"
        }, {
          value: 3,
          text: "สาขาเทคโนโลยีสารสนเทศทางธุรกิจ (หลักสูตรนานาชาติ)"
        }],
        gen_class: [{
          name: "สังคม",
          list: [1, 2, 3, 4, 5],
          status:1,
        }, {
          name: "วิทย์",
          list: [1, 2, 3, 4, 5],
          status:1,
        }, {
          name: "คณิต",
          list: [1, 2, 3, 4, 5],
          status:1,
        }, {
          name: "ไทย",
          list: [1, 2, 3, 4, 5],
          status:1,
        }, {
          name: "อัง",
          list: [1, 2, 3, 4, 5],
          status:1,
        }],



      }

    },
    computed: {
      major_name() {
        for (let index = 0; index < this.major.length; index++) {
          console.log(this.major[index].text)
          if (this.major[index].value == this.majors) {
            return this.major[index].text;
          }
        }
      },
      gen_loop() {
        this.state += 1
        console.log(this.gen_all[this.state])
        return this.gen_all[this.state]

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
      },
      previewImage: function (event) {
        // Reference to the DOM input element
        var input = event.target;
        // Ensure that you have a file before attempting to read it
        if (input.files && input.files[0]) {
          // create a new FileReader to read this image and convert to base64 format
          var reader = new FileReader();
          // Define a callback function to run, when FileReader finishes its job
          reader.onload = (e) => {
            // Note: arrow function used here, so that "this.imageData" refers to the imageData of Vue component
            // Read image as base64 and set to imageData
            this.imageData = e.target.result;
          }
          // Start the reader job - read file as a data url (base64 format)
          reader.readAsDataURL(input.files[0]);
        }
      }

    }

  }
</script>
<style scoped>
  .inputfile {
    width: 0.1px;
    height: 0.1px;
    opacity: 0;
    overflow: hidden;
    position: absolute;
    z-index: -1;
  }

  .about {
    background-image: url("../assets/banner.jpg");
    background-attachment: fixed;
    background-position: center center;
    background-size: cover;
    width: 100%;
    z-index: -19999;
  }

  .bv-example-row {
    margin: auto;
    background-color: white
  }

  #Form {
    padding: 5%;
  }

  #profile,
  .preview {
    height: 20vh;
    width: 20vh;
    text-align: center;
    background-color: transparent;
    background-image: url("https://image.flaticon.com/icons/svg/206/206897.svg");
    background-repeat: no-repeat;
    border: none;
    margin: auto;
    margin-bottom: 0.5vh;
  }
  label{
    padding: 0.5vh;
  }

  .inputfile+label {
    font-size: 1.25em;
    font-weight: 700;
    color: white;
    background-color: blue;
    display: inline-block;
  }

  .inputfile:focus+label,
  .inputfile+label:hover {
    background-color: orange;
  }

  .inputfile+label {
    cursor: pointer;
    /* "hand" cursor */
  }

  .preview {
    border-radius: 50%;
  }
</style>