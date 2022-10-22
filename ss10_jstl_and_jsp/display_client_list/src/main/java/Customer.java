public class Customer {
    private String name;
    private String birthday;
    private String address;
    private String urlImage;

    public Customer() {
    }

    public Customer(String name, String birthday, String address, String urlImage) {
        this.name = name;
        this.birthday = birthday;
        this.address = address;
        this.urlImage = urlImage;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getUrlImage() {
        return urlImage;
    }

    public void setUrlImage(String urlImage) {
        this.urlImage = urlImage;
    }
}
