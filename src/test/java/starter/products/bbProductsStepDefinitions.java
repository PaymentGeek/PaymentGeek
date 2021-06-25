package starter.products;

import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;
import net.thucydides.core.annotations.Steps;
import starter.postcodes.LocationResponse;

import static net.serenitybdd.rest.SerenityRest.restAssuredThat;
import static org.hamcrest.Matchers.equalTo;

public class bbProductsStepDefinitions {

    @Steps
    bbProductsAPI productsAPI;

    @When("Get all products from store")
    public void getAllProducts() {
        bbProductsAPI.getAllProducts();
    }

    @When("Get product by id {}")
    public void getProductById(String id) {
        bbProductsAPI.getProductById(id);
    }
}
