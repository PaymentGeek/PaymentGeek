package starter.products;

import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;

public class bbProductsAPI {

    private static String ALL_PRODUCTS = "http://localhost:3030/products";
    private static String PRODUCT_BY_ID = "http://localhost:3030/products/{id}";

    @Step("Get all products from store")
    public static void getAllProducts() {
        SerenityRest.given()
                .get(ALL_PRODUCTS).prettyPrint();
    }

    @Step("Get product by id {0}")
    public static void getProductById(String id) {
        SerenityRest.given()
                .pathParam("id", id)
                .get(PRODUCT_BY_ID).prettyPrint();
    }
}
