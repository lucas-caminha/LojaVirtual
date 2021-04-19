package br.com.ucsal.dojo.model;

import java.util.HashMap;

public class Oferta {

	private static HashMap<Integer,Produto> ofertas = new HashMap<Integer, Produto>();
	
	private static void criaListaDeOfertas() {
		
		Produto produto1 = new Produto("iPhone 7", 2599,"Smartphone, Apple, iPhone 7 MN912BR/A, 32 GB, 4.7'', Rosa/Dourado", "https://images-na.ssl-images-amazon.com/images/I/61FzbELsAtL._AC_SX679_.jpg");
		Produto produto2 = new Produto("Parafusadeira ", 163.89,"BLACK+DECKER Parafusadeira a Bateria 4.8V Bivolt com 16 Acessórios e Carregador KC4815B", "https://http2.mlstatic.com/D_NQ_NP_687375-MLB40175143927_122019-O.webp");
		Produto produto3 = new Produto("Livro - Futuro Presente", 25.0, "Futuro Presente: O mundo movido à tecnologia Capa comum - 02 dezembro 2019", "https://images-na.ssl-images-amazon.com/images/I/41Jx4KoflWL._SX346_BO1,204,203,200_.jpg");
		Produto produto4 = new Produto("Mini Processador De Legumes", 44.90, "Mini Processador De Legumes Chef Manual", "https://images-na.ssl-images-amazon.com/images/I/51hQiyLplQL._AC_SX450_.jpg");
		Produto produto5 = new Produto("Processador AMD Ryzen 5 3600", 1599, "Processador AMD Ryzen 5 3600 Cache 32MB 3.6GHz(4.2GHz Max Turbo) AM4, Sem Vídeo - 100-100000031BOX", "https://images8.kabum.com.br/produtos/fotos/102438/processador-amd-ryzen-5-3600-cache-32mb-3-6ghz-4-2ghz-max-turbo-am4-100-100000031box_processador-amd-ryzen-5-3600-cache-32mb-3-6ghz-4-2ghz-max-turbo-am4-100-100000031box_1562606710_g.jpg");
		
		ofertas.put(produto1.getId(),produto1);
		ofertas.put(produto2.getId(),produto2);
		ofertas.put(produto3.getId(),produto3);
		ofertas.put(produto4.getId(),produto4);
		ofertas.put(produto5.getId(),produto5);
	}


	public static HashMap<Integer, Produto> getOfertas() {
		criaListaDeOfertas();
		return ofertas;
	}
	
	public static void removeOferta(Produto produto) {
		ofertas.remove(produto.getId());
	}


	public static void adicionaOferta(Produto produto) {
		ofertas.put(produto.getId(), produto);
	}
	
}
