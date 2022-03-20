package Model;

/**
 *
 * @author Admin
 */
public class Room {

    private int roomId;
    private String roomName;
    private double price;
    private int typeId;
    private int status;
    private String decription;
    public Room() {
    }

    public Room(int roomId, String roomName, double price, int typeId, int status) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.price = price;
        this.typeId = typeId;
        this.status = status;
    }

    public Room(int roomId, String roomName, double price, int typeId, int status, String decription) {
        this.roomId = roomId;
        this.roomName = roomName;
        this.price = price;
        this.typeId = typeId;
        this.status = status;
        this.decription = decription;
    }

    public String getDecription() {
        return decription;
    }

    public void setDecription(String decription) {
        this.decription = decription;
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public int getTypeId() {
        return typeId;
    }

    public void setTypeId(int typeId) {
        this.typeId = typeId;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

}
