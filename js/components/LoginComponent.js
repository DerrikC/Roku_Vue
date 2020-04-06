export default {
    template: `

    
        <div class="container">
        
        <h1>Sign In</h1>

 
      
        <label for="Email or Phone Number">*Username</label>
        <br>
        <input v-model="input.username" type="text" id="username" name="username" placeholder="Email or phone number" required>
    
    
    <div>
        <label for="pass">*Password</label>
        <br>
        <input v-model="input.password" type="password" id="pass" name="password" placeholder="Password"
               minlength="8" required>
    </div>
    
    <input v-on:click.prevent="login()" class="signBtn" type="submit" value="Sign in">
    <br>
    <button>Sign Up</button>
    <button>Forgot Password?</button>

    </div>
  
 
     `,

    data() {
        return {
            input: {
                username: "",
                password: ""
            },

        }
    },

    methods: {
        login() {

            if (this.input.username != "" && this.input.password != "") {
                // fetch the user from the DB
                // generate the form data
                let formData = new FormData();

                formData.append("username", this.input.username);
                formData.append("password", this.input.password);

                let url = `./admin/admin_login.php`;

                fetch(url, {
                    method: 'POST',
                    body: formData
                })
                    .then(res => res.json())
                    .then(data => {
                        if (typeof data != "object") { // means that we're not getting a user object back
                            console.warn(data);
                            // just for testing
                            alert("authentication failed, please try again");
                        } else {
                            this.$emit("authenticated", true, data);
                            this.$router.replace({ name: "users" });
                        }
                    })
                    .catch(function (error) {
                        console.log(error);
                    });
            } else {
                console.log("A username and password must be present");
            }
        }
    }
}