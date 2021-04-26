package Controllers;

import Models.House;
import Models.Room;
import Models.Services;
import Models.Villa;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class MainController {
    private static Object FileWriter;

    public static Scanner input(){
        Scanner scanner = new Scanner(System.in);
        return scanner;
    }
    public static List<House> houseList = new ArrayList<>();
    public static List<Room> roomList = new ArrayList<>();
    public static List<Villa> villaList = new ArrayList<>();
    public static void main(String[] args) {
        diplayMenu();


    }

    private static void diplayMenu() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("1. Add new Services");
        System.out.println("2. Show Services");
        System.out.println("3. Add New Customer");
        System.out.println("4. Show Information of Customer");
        System.out.println("5. Add New Booking");
        System.out.println("6. Show Information of Employee");
        System.out.println("7. Exit");
        switch (scanner.nextInt()) {
            case 1: ShowAddNewServices();
                break;
            case 2: showServices();
                break;
            case 3: addNewCustomer();
                break;
            case 4: showInformationofCustomer();
                break;
            case 5: addNewBooking();
                break;
            case 6: showInformationofEmployee();
                break;
            case 7: break;

        }
    }

    private static void showInformationofEmployee() {
    }

    private static void addNewBooking() {
    }

    private static void showInformationofCustomer() {
    }

    private static void addNewCustomer() {
    }

    private static void showServices() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("1. Show all Villa");
        System.out.println("2. Show all House");
        System.out.println("3. Show all Room");
        System.out.println("4. Show All Name Villa Not Duplicate");
        System.out.println("5. Show All Name House Not Duplicate");
        System.out.println("6. Show All Name Room Not Duplicate");
        System.out.println("7. Back to menu");
        System.out.println("8. Exit");
        switch (scanner.nextInt()){
            case 1: showallVilla();
                break;
            case 2: showallHouse();
                break;
            case 3: showallRoom();
                    diplayMenu();
                break;
            case 4: showAllNameVillaNotDuplicate();
                break;
            case 5: showAllNameHouseNotDuplicate();
                break;
            case 6: showAllNameRoomNotDuplicate();
                break;
            case 7: diplayMenu();
                break;
            case 8: break;
        }
    }

    private static void showAllNameRoomNotDuplicate() {
    }

    private static void showAllNameHouseNotDuplicate() {
    }

    private static void showAllNameVillaNotDuplicate() {
    }

    private static void showallRoom() {
        for (Room room : roomList){
            room.toString();
        }
    }

    private static void showallHouse() {
        for (House house : houseList){
            house.toString();
        }
    }

    private static void showallVilla() {
        for (Villa villa : villaList){
            villa.toString();
        }
    }


    private static void ShowAddNewServices() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("1. Add New Villa");
        System.out.println("2. Add New House");
        System.out.println("3. Add New Room");
        System.out.println("4. Back to menu");
        System.out.println("5. Exit");
        switch (scanner.nextInt()){
            case 1: addNewVilla();
                    diplayMenu();
                break;
            case 2: addNewHouse();
                    diplayMenu();
                break;
            case 3: addNewRoom();
                    diplayMenu();
                break;
            case 4: diplayMenu();
                break;
            case 5: break;
        }
    }
    

    private static void addNewRoom() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhap ten dich vu: ");
        String tendichvu = input().nextLine();
        System.out.println("ten dich vu : " + tendichvu);
        System.out.println("dien tich su dung: ");
        String dientichsudung = input().nextLine();
        System.out.println("dien tich su dung : " + dientichsudung);
        System.out.println("nhap chi phi thue: ");
        String chiphithue = input().nextLine();
        System.out.println("chi phi thue: " + chiphithue);
        System.out.println("nhap so luong nguoi toi da: ");
        int soluongnguoitoida = input().nextInt();
        System.out.println("so luong nguoi toi da: " + soluongnguoitoida);
        System.out.println("nhap kieu thue: ");
        String kieuthue = input().nextLine();

        System.out.println("kieu thue: " + kieuthue);
        System.out.println("nhap dich vu mien phi di kem: ");
        String dichvumienphidikem = input().nextLine();
        System.out.println("dich vu mien phi di kem: " + dichvumienphidikem);
        Room room = new Room(tendichvu, dientichsudung, chiphithue, soluongnguoitoida, kieuthue, dichvumienphidikem);
        roomList.add(room);
        FileWriter fileWriter = null;
        try {
            fileWriter = new FileWriter("D:\\Inter0421-PhanHungDung\\FuramaResort\\src\\Controllers\\Room.csv",true);
            fileWriter.append(room.getTenDichVu()+"\t");
            fileWriter.append(room.getDienTichSuDung()+"\t");
            fileWriter.append(room.getChiPhiThue()+"\t");
            fileWriter.append(room.getSoLuongNguoiToiDa()+"\t");
            fileWriter.append(room.getKieuThue()+"\t");
            fileWriter.append(room.getDichVuMienPhiDiKem()+"\t");
            System.out.println("them thanh cong");
        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                fileWriter.flush();
                fileWriter.close();
                ShowAddNewServices();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private static void addNewHouse() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhap ten dich vu: ");
        String tendichvu = input().nextLine();
        System.out.println("ten dich vu : " + tendichvu);
        System.out.println("dien tich su dung: ");
        String dientichsudung = input().nextLine();
        System.out.println("dien tich su dung : " + dientichsudung);
        System.out.println("nhap chi phi thue: ");
        String chiphithue = input().nextLine();
        System.out.println("chi phi thue: " + chiphithue);
        System.out.println("nhap so luong nguoi toi da: ");
        int soluongnguoitoida = input().nextInt();
        System.out.println("so luong nguoi toi da: " + soluongnguoitoida);
        System.out.println("nhap kieu thue: ");
        String kieuthue = input().nextLine();
        scanner.nextLine();
        System.out.println("kieu thue: " + kieuthue);;
        System.out.println("nhap tieu chuan phong: ");
        String tieuchuanphong = input().nextLine();
        System.out.println("tieu chuan phong: " + tieuchuanphong);
        System.out.println("nhap mo ta tien nghi khac: ");
        String motatiennghikhac = input().nextLine();
        System.out.println("mo ta tien nghi khac: " + motatiennghikhac);
        System.out.println("nhap so tang: ");
        int sotang = input().nextInt();
        System.out.println("so tang: " + sotang);
        House house = new House(tendichvu, dientichsudung, chiphithue, soluongnguoitoida, kieuthue, tieuchuanphong
        , motatiennghikhac, sotang);
        houseList.add(house);
        FileWriter fileWriter = null;
        try {
            FileWriter = new FileWriter("D:\\Inter0421-PhanHungDung\\FuramaResort\\src\\Controllers\\House.csv",true);
            fileWriter.append(house.getTenDichVu()+"\t");
            fileWriter.append(house.getDienTichSuDung()+"\t");
            fileWriter.append(house.getChiPhiThue()+"\t");
            fileWriter.append(house.getSoLuongNguoiToiDa()+"\t");
            fileWriter.append(house.getKieuThue()+"\t");
            fileWriter.append(house.getTieuChuanPhong()+"\t");
            fileWriter.append(house.getMoTaTienNghiKhac()+"\t");
            fileWriter.append(house.getSoTang()+"\t");
            System.out.println("them thanh cong");
        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                fileWriter.flush();
                fileWriter.close();
                ShowAddNewServices();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }

    private static void addNewVilla() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("nhap ten dich vu: ");
        String tendichvu = input().nextLine();
        System.out.println("ten dich vu: " + tendichvu);
        System.out.println("dien tich su dung: ");
        String dientichsudung = input().nextLine();
        System.out.println("dien tich su dung: " + dientichsudung);
        System.out.println("nhap chi phi thue: ");
        String chiphithue = input().nextLine();
        System.out.println("chi phi thue: " + chiphithue);
        System.out.println("nhap so luong nguoi toi da: ");
        int soluongnguoitoida = input().nextInt();
        System.out.println("so luong nguoi toi da: " + soluongnguoitoida);
        System.out.println("nhap kieu thue: ");
        String kieuthue = input().nextLine();
        System.out.println("kieu thue: " + kieuthue);
        System.out.println("nhap tieu chuan phong: ");
        String tieuchuanphong = input().nextLine();
        System.out.println("tieuchuanphong: " + tieuchuanphong);
        System.out.println("nhap mo ta tien nghi khac: ");
        String motatiennghikhac = input().nextLine();
        System.out.println("mo ta tien nghi khac: " + motatiennghikhac);
        System.out.println("nhap dien tich ho boi: ");
        String dientichhoboi = input().nextLine();
        System.out.println("mo ta tien nghi khac: " + motatiennghikhac);
        System.out.println("nhap so tang: ");
        int sotang = input().nextInt();
        Villa villa = new Villa(tendichvu, dientichsudung, chiphithue, soluongnguoitoida, kieuthue, tieuchuanphong
                , motatiennghikhac, dientichhoboi, sotang);
        villaList.add(villa);
        FileWriter fileWriter =null;
        try {
            FileWriter = new FileWriter("D:\\Inter0421-PhanHungDung\\FuramaResort\\src\\Controllers\\Villa.csv",true);
            fileWriter.append(villa.getTenDichVu()+"\t");
            fileWriter.append(villa.getDienTichSuDung()+"\t");
            fileWriter.append(villa.getChiPhiThue()+"\t");
            fileWriter.append(villa.getSoLuongNguoiToiDa()+"\t");
            fileWriter.append(villa.getKieuThue()+"\t");
            fileWriter.append(villa.getSoLuongNguoiToiDa()+"\t");
            fileWriter.append(villa.getKieuThue()+"\t");
            fileWriter.append(villa.getTieuChuanPhong()+"\t");
            fileWriter.append(villa.getMoTaTienNghiKhac()+"\t");
            fileWriter.append(villa.getDienTichHoBoi()+"\t");
            fileWriter.append(villa.getSoTang()+"\t");

            System.out.println("them thanh cong");
        } catch (IOException e) {
            e.printStackTrace();
        }
        finally {
            try {
                fileWriter.flush();
                fileWriter.close();
                ShowAddNewServices();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
    }
