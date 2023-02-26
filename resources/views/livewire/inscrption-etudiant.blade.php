<div>
    {{-- Because she competes with no one, no one can compete with her. --}}
    <div x-data="{
        lesEtudiants: @entangle('lesEtudiants').defer,
        lesNces: @entangle('lesNces').defer,
        nce: @entangle('nce').defer,
        nom: @entangle('nom').defer,
        nceOK: @entangle('nceOK').defer,
        prenoms: @entangle('prenoms').defer,
        email: @entangle('email').defer,
        mot2pass: @entangle('mot2pass').defer,
        mot2pass2: @entangle('mot2pass2').defer,
        inscription_ok: @entangle('inscription_ok').defer,
        pass: false,
        passConfirm: false,
        etudiantOK: false,

        checkInfo(){
            this.etudiantOK = Boolean(this.prenoms) && Boolean(this.nom);
        },
        confirmPassword(){
            this.passConfirm = false;
            this.pass = Boolean(this.mot2pass) && Boolean(this.mot2pass2);
            this.passConfirm = this.pass && (this.mot2pass == this.mot2pass2);
            console.log(this.passConfirm);
        },
        isEmail(email) {
            var re = /^(([^<>()[\]\\.,;:\s@\']+(\.[^<>()[\]\\.,;:\s@\']+)*)|(\'.+\'))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            return re.test(email);
        },
        verifEmail(){
            this.emailOK = checkEmail(this.email);
        },
        storeData: async function(){
                await @this.storeData().then(value => {
                    data = JSON.parse(value);
                });
            }

    }">
        <div class="container">
            <h1>
                Inscription des étudiants
            </h1>
            <template x-if="inscription_ok">
                <h2>
                    Merci vos données ont été enregistrées
                </h2>
            </template>
            <template x-if="!inscription_ok">
                <div>
                    <div class="row">
                        <div class="col-12">

                        </div>
                        <fieldset style="border:1px blue solid; padding: 2.0em;">
                            <legend>Info étudiant</legend>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="nce">NCE</label> <br>
                                    <input type="text" x-model="nce" style="border:1px blue solid;"
                                            class="form-control"">
                                </div>
                                <template x-if="!nceOK">
                                    <div style="color:red; font-weight: bold;">
                                        Ce NCE est déjà utilisé par un autre étudiant
                                    </div>
                                </template>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="nom">Nom</label><br>
                                    <input type="text" x-model="nom" style="border:1px blue solid;"
                                            class="form-control" x-on:change="checkInfo()">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="prenoms">Prenoms</label><br>
                                    <input type="text" x-model="prenoms" style="border:1px blue solid;"
                                            class="form-control" x-on:change="checkInfo()">
                                </div>
                            </div>
                        </fieldset>
                    </div>
                    <div class="row">
                        <fieldset style="border:1px blue solid; padding: 2.0em;">
                            <legend>Compte Utilisateur</legend>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="email">Email</label> <br>
                                    <input x-model="email" type="email" id="email" data-rules='["required","email"]'
                                            class="form-control" style="border:1px blue solid;">
                                </div>
                                <template x-if="Boolean(email) && !isEmail(email)">
                                    <div style="color:red; font-weight: bold;">
                                        Email inccorrect
                                    </div>
                                </template>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="mot2pass">Mot de passe</label><br>
                                    <input type="password" x-model="mot2pass" style="border:1px blue solid;" class="form-control">
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="mot2pass2">Confirmer mot de pass</label><br>
                                    <input type="password" x-model="mot2pass2" style="border:1px blue solid;"
                                            class="form-control" x-on:change.debounce="confirmPassword()">
                                </div>
                                <template x-if="pass">
                                    <template x-if="!passConfirm">
                                        <div>
                                            <h6 style="color:red;">
                                                les 2 mots de passe ne concordent pas
                                            </h6>
                                        </div>
                                    </template>
                                </template>
                            </div>

                        </fieldset>

                    </div>
                    <template x-if="isEmail(email) && passConfirm && etudiantOK">
                        <div class="row" style="padding: 1.0em;">
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-lg btn-block" style="width: 100%;" @click="storeData()">
                                    Valider
                                </button>
                            </div>
                        </div>
                    </template>
                </div>
            </template>


        </div>

    </div>
</div>
