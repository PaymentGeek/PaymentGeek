package starter.products;

import net.serenitybdd.rest.SerenityRest;
import net.thucydides.core.annotations.Step;

public class bbProductsAPI {

    private static String ALL_PRODUCTS = "http://localhost:3030/products";

    @Step("Get all products from store")
    public static void getAllProducts() {
        SerenityRest.given()
                .get(ALL_PRODUCTS);
    }
}
