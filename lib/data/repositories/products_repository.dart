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
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '2',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '3',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '4',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '5',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '6',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '7',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '8',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '9',
          name: 'Shoes',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
        const Product(
          id: '10',
          name: 'Sneakers',
          description: 'Good sneakers',
          imageUrl:
              'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a8/A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG/180px-A_classic_Black_pair_of_Converse_All_Stars_resting_on_the_Black_%26_White_Ed._Shoebox_%281998-2002%29.JPG',
          price: 100.0,
        ),
      ],
    );

    return fakeRequest;
  }
}
