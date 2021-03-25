package cn.edkso.candiandian.controller;


import cn.edkso.candiandian.domain.Product;
import cn.edkso.candiandian.domain.Restaurant;
import cn.edkso.candiandian.domain.Store;
import cn.edkso.candiandian.enums.ResultEnum;
import cn.edkso.candiandian.exception.CddEcxeption;
import cn.edkso.candiandian.service.ProductService;
import cn.edkso.candiandian.service.StoreService;
import cn.edkso.candiandian.utils.ResultVOUtils;
import cn.edkso.candiandian.utils.ServletUtils;
import cn.edkso.candiandian.vo.ResuleVo;
import lombok.extern.slf4j.Slf4j;
import org.hibernate.loader.plan.spi.Return;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.util.FileCopyUtils;
import org.springframework.util.ResourceUtils;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;
import java.io.*;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Slf4j
@RestController
@RequestMapping("/buyer/store")
public class StoreController {

    @Autowired
    private StoreService storeService;

    /**
     * 查找store的商家信息信息
     * @return
     */
    @PostMapping("storeInfo")
    public Store storeInfo(){
        Object store = ServletUtils.getSession().getAttribute("store");
        System.out.println("22222222222222222222222222222222="+store);
        if(store instanceof Store){
            Store s = (Store) store;
            return s;
        }
        //storeService.findOne();
        return null;
    }

    @PostMapping("list")
    public List<Store> list(@RequestParam("id") String restaurantId){

        List<Store> storeList = storeService.findAllByRestaurantId(restaurantId);
        return storeList;
    }

    @PostMapping("addProduct")
    public ResuleVo addProduct(MultipartFile uploadFile,
                                      @Valid Product product) {
        //重命名文件名
        String uploadFileName = uploadFile.getOriginalFilename();
        String suffix = uploadFileName.substring(uploadFileName.lastIndexOf("."));
        SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
        uploadFileName = sf.format(new Date()) + (new Random().nextInt(99999)) + suffix;
//
//        product.setIcon("https://edkso.mynatapp.cc/candiandian/static/upload/img/restrurant/store/product/icon/" + uploadFileName);
//        Product productResult = storeService.save(product);

//        if (productResult != null){
//            //保存文件
//            try {
//                File saveFile = new File(ResourceUtils.getURL("classpath:").getPath());
//                System.out.println(saveFile.getAbsolutePath());
//
//                File saveFile1 = new File(saveFile.getAbsolutePath(),"static/upload/" + "img/restrurant/store/product/icon/" + uploadFileName );
//                if(!saveFile.exists()) {
//                    saveFile.mkdirs();
//
//                }
//                File saveFile2 = new File(saveFile.getAbsolutePath(),"static/upload/" + "img/restrurant/store/product/icon/" + uploadFileName );
//                if(!saveFile.exists()) {
//                    saveFile.mkdirs();
//
//                }
//                byte[] bytes = saveFile2.getBytes();
//                OutputStream out = new FileOutputStream(saveFile2);
//                out.write(bytes);
//                out.flush();
//                out.close();
//            } catch (IOException e) {
//                e.printStackTrace();
//                new CddEcxeption(ResultEnum.FILE_SAVE_ERROR);
//                return ResultVOUtils.error(-1,"文件保存失败");
//            }
//            return ResultVOUtils.success();
//        }else{
//            return ResultVOUtils.error(-1,"存入数据库失败");
//        }
        product.setIcon("https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/" + uploadFileName);
        Product productResult = storeService.save(product);

        if (productResult != null){
            //保存文件
            try {
                File saveFile = new File(ResourceUtils.getURL("classpath:").getPath());
                saveFile = new File(saveFile.getPath() + "/static/img/restrurant/store/product/icon",uploadFileName);
                byte[] bytes = uploadFile.getBytes();
                OutputStream out = new FileOutputStream(saveFile);
                out.write(bytes);
                out.flush();
                out.close();
            } catch (IOException e) {
                e.printStackTrace();
                new CddEcxeption(ResultEnum.FILE_SAVE_ERROR);
                return ResultVOUtils.error(-1,"文件保存失败");
            }
            return ResultVOUtils.success();
        }else{
            return ResultVOUtils.error(-1,"存入数据库失败");
        }
    }

    //查询商品
    @PostMapping("findProductAll")
    public ResuleVo<List<Product>> findProductAll() {
        List<Product> productList = storeService.findProductAllByStoreId();


        return ResultVOUtils.success(productList);
    }

    //查询单个商品
    @PostMapping("findProductOne")
    public ResuleVo<Product> findProductOne(@RequestParam("id") String id) {
        Product product = storeService.findProductOne(id);
        return ResultVOUtils.success(product);
    }


    //修改商品
    @PostMapping("updataProduct")
    public ResuleVo updataProduct(MultipartFile uploadFile,
                               @Valid Product product) {

        if(uploadFile != null){
            String uploadFileName = uploadFile.getOriginalFilename();
            String suffix = uploadFileName.substring(uploadFileName.lastIndexOf("."));
            SimpleDateFormat sf = new SimpleDateFormat("yyyyMMddHHmmss");
            uploadFileName = sf.format(new Date()) + (new Random().nextInt(99999)) + suffix;
            product.setIcon("https://edkso.mynatapp.cc/candiandian/img/restrurant/store/product/icon/" + uploadFileName);

            Product productResult = storeService.update(product);
            if (productResult != null){
                //保存文件
                try {
                    File saveFile = new File(ResourceUtils.getURL("classpath:").getPath());
                    saveFile = new File(saveFile.getPath() + "/static/img/restrurant/store/product/icon",uploadFileName);
                    byte[] bytes = uploadFile.getBytes();
                    OutputStream out = new FileOutputStream(saveFile);
                    out.write(bytes);
                    out.flush();
                    out.close();
                } catch (IOException e) {
                    e.printStackTrace();
                    new CddEcxeption(ResultEnum.FILE_SAVE_ERROR);
                    return ResultVOUtils.error(-1,"文件保存失败");
                }
                return ResultVOUtils.success();
            }else{
                return ResultVOUtils.error(-1,"存入数据库失败");
            }
        }else{
            Product productResult = storeService.update(product);
            return ResultVOUtils.success();
        }

    }
}
