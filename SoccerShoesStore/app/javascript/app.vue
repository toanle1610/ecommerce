<template>
  <b-navbar toggleable="md" type="dark" variant="info" >
    <b-navbar-brand href="#">Soccer Shoe Store</b-navbar-brand>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
      <b-navbar-nav class="mr-auto" >
        <b-nav-item href="/product/index">Products</b-nav-item>
        <b-nav-item href="#">Owner Actions</b-nav-item>
      </b-navbar-nav>
      <form class="form-inline mt-2 mt-md-0" action="/search" accept-charset="UTF-8" method="get"><input name="utf8" type="hidden" value="✓">
        <input type="text" name="q" id="q" class="form-control mr-sm-2" placeholder="Search for Your Shoes" >
        <select class="form-control" >
            <option v-for="item in categories"> {{ item }} </option>
        </select>
        <input type="submit" name="commit" value="Search" class="btn btn-outline-success my-2 my-sm-0" data-disable-with="Search" >
      </form>
    </div>
  </b-navbar>
</template>

<script>

</script>

<style scoped>
p {
  font-size: 2em;
  text-align: center;
}

a, a:link, a:visited{
  text-decoration: none;
}
</style>
