import 'package:injectable/injectable.dart';
import 'package:state_management/domain/entities/product.dart';

abstract class ProductsRepository {
  Future<List<Product>> getProducts();
}

@Singleton(as: ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  @override
  Future<List<Product>> getProducts() async {
    final fakeRequest = await Future.delayed(
      const Duration(seconds: 3),
      () => [
        const Product(
          id: '1',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://www.sneakersnstuff.com/images/249678/jaunuary-57.jpg',
          price: 100.0,
        ),
        const Product(
          id: '2',
          name: 'Bomber jacket',
          description: 'Black jacket',
          imageUrl:
              'https://media.everlane.com/image/upload/c_fill,dpr_2,f_auto,g_face:center,q_auto,w_auto/v1/i/2d82c656_2f73.jpg',
          price: 100.0,
        ),
        const Product(
          id: '3',
          name: 'Long-sleeve',
          description: 'Striped',
          imageUrl:
              'https://comme-des-garcons.spb.ru/upload/resize_cache/iblock/b56/700_700_1/b56f50a3e0d8aed5ca4c5b91e24f175e.jpg',
          price: 89.0,
        ),
        const Product(
          id: '4',
          name: 'Shirt',
          description: 'Green shirt',
          imageUrl:
              'https://imgprd19.hobbylobby.com/2/4f/57/24f57e245a879cb2543edd1df4e090bfebf24a45/700Wx700H-1013689-0320.jpg',
          price: 100.0,
        ),
        const Product(
          id: '5',
          name: 'Cap',
          description: 'Looks great',
          imageUrl:
              'https://assets.ajio.com/medias/sys_master/root/20210202/4H2e/601987bdf997dd5c40e54358/-1117Wx1400H-460807245-black-MODEL.jpg',
          price: 100.0,
        ),
        const Product(
          id: '6',
          name: 'Cardigan',
          description: 'My mom has this one',
          imageUrl: 'https://www.maisonmargiela.com/39/39987822ex_14_f.jpg',
          price: 100.0,
        ),
        const Product(
          id: '7',
          name: 'Coat',
          description: 'Nice coat',
          imageUrl:
              'https://ean-images.booztcdn.com/object/1300x1700/g/obj23034424_csandshell_v183539.jpg',
          price: 100.0,
        ),
        const Product(
          id: '8',
          name: 'Jeans',
          description: 'Nice jeans',
          imageUrl:
              'https://media.gq-magazine.co.uk/photos/604a389378d908f40e6180ae/master/w_1920,h_1280,c_limit/Jeans_0006_Polo%20raplh%20lauren.jpg',
          price: 79.9,
        ),
        const Product(
          id: '9',
          name: 'Hoodie',
          description: 'Expensive hoodie',
          imageUrl:
              'https://hb.bizmrg.com/cybersportru-media/70/707ba8e3902018d2c3f2aea0a15f9c34.jpg',
          price: 249.99,
        ),
        const Product(
          id: '10',
          name: 'Sweater',
          description: 'You will not get cold',
          imageUrl:
              'https://media.dior.com/couture/ecommerce/media/catalog/product/e/i/1602002702_054S55AM055_X5820_E08_ZH.jpg',
          price: 100.0,
        ),
      ],
    );

    return fakeRequest;
  }
}
