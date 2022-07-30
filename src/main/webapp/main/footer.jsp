 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<footer  class="text-center text-lg-start text-dark" style="background-color: #ECEFF1" >
    <!-- Section: Social media -->
    <section
             class="d-flex justify-content-between p-4 text-white"
             style="background-color: #21D192"
             >
      <!-- Left -->
      <div class="me-5">
        <span>Social networks:</span>
      </div>
      <!-- Left -->

      <!-- Right -->
      <div>
        <a href="" class="text-white me-4">
          <i class="fab fa-facebook-f"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-twitter"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-google"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-instagram"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-linkedin"></i>
        </a>
        <a href="" class="text-white me-4">
          <i class="fab fa-github"></i>
        </a>
      </div>
      <!-- Right -->
    </section>
    <!-- Section: Social media -->

    <!-- Section: Links  -->
    <section class="">
      <div class="container text-center text-md-start mt-5">
        <!-- Grid row -->
        <div class="row mt-3">
          <!-- Grid column -->
          <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
            <!-- Content -->
            <h6 class="text-uppercase fw-bold">Segnatec.com.br</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              Construindo o futuro.<BR />
              Respeitando o passado.<BR />
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Produtos</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p>
              <a href="https://hotm.art/javaweb-fullstack" class="text-dark">Formação Java Web Full-Stack</a>
            </p>
            <p>
              <a href="https://hotm.art/mentoria-java" class="text-dark">Mentoria em JAVA Web Full-Stack</a>
            </p>
            <p>
              <a href="https://hotm.art/spring-boot-rest-api" class="text-dark">Formação Spring Boot REST API</a>
            </p>
            <p>
              <a href="https://hotm.art/spring-rest-aws" class="text-dark">Formação Júnior AWS Cloud e Spring Boot REST com Angular 13</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Links Úteis</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
             <p>
              <a href="<%= request.getContextPath()%>/index.jsp" class="text-dark">Home</a>
            </p>
            <p>
              <a href="<%= request.getContextPath()%>/login.jsp" class="text-dark">Login</a>
            </p>
            <p>
              <a href="https://hotmart.com/pt-br" class="text-dark">Hotmart</a>
            </p>
           <p>
              <a href="#!" onclick="callmodal()" class="text-dark">Sobre</a>
            </p>
          </div>
          <!-- Grid column -->

          <!-- Grid column -->
          <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
            <!-- Links -->
            <h6 class="text-uppercase fw-bold">Contato</h6>
            <hr
                class="mb-4 mt-0 d-inline-block mx-auto"
                style="width: 60px; background-color: #7c4dff; height: 2px"
                />
            <p><i class="fas fa-home mr-3"></i> PARNAIBA - PI 64217600, BR</p>
            <p><i class="fas fa-envelope mr-3"></i> dcdsn.francisco@gmail.com</p>
            <p><i class="fas fa-phone mr-3"></i>	+ 5586 9 8157-2175 </p>
            <p><i class="fa fa-whatsapp"></i>	+ 5586 9 8157-2175 </p>
          </div>
          <!-- Grid column -->
        </div>
        <!-- Grid row -->
      </div>
    </section>
    <!-- Section: Links  -->

    <!-- Copyright -->
    <div
         class="text-center p-3"
         style="background-color: rgba(0, 0, 0, 0.2)"
         >
      © 2022 Copyright
      <a class="text-dark" href="segnatec.com.br"
         >  | segnatec.com.br</a
        >
    </div>
    <!-- Copyright -->
  </footer>