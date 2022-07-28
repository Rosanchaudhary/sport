import 'package:flutter/material.dart';

class PopularSports extends StatelessWidget {
  const PopularSports({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 77,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 69,
                color: const Color.fromRGBO(242, 242, 242, 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text("13.07"),
                    Text("15:45"),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.network(
                        "https://s3-alpha-sig.figma.com/img/0cf8/8592/5d923c89cb28229fc020430528c32857?Expires=1659916800&Signature=HJ7YtzhWiCRg5G~41JeCGaG4B0P3wb-fHVmMLqGt0VIwYt7CnHJnxKd6ya3uDsbw1wn-roaG5eVpDa-pNqkB23h6vFjFxHnGsOj~BPH0Dced6yRmewEkVPH8fEe3W5D3w59xfUEajxgadD2CkIZ4-F7MzX9S53xt2~9Lf4Rp8Z-lFnoHW1dtFQFaGoBs6D59vYoDj3W1YXEclN59BpRkPNbVOE1Wmz15TlXEtMBJZwd7EzGZ6yh7Uj3NXYn7q8aeYjHfVw4vY6F9bsRvnJyYRyWTm1s3NUrKwVfmGqWNIJBVo1NJ803Fp5w~IMAQ0~76zfGMUIdnwXhyUmc9Z0m5Cw__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                        height: 16,
                        width: 16,
                      ),
                      const Text("Buchenbühl")
                    ],
                  ),
                  Row(
                    children: [
                      Image.network(
                        "https://s3-alpha-sig.figma.com/img/df3b/9498/9dafb51a5086422e88e4d77d9efa8639?Expires=1659916800&Signature=FcURoDBzYa1dXVbeD~BDRFf4ao4rFodqgN4jyYBMIqAZ6o7cHmDGzsVG-rkOFtGHcT1mJJsijcfbuTT87rTg7MyYR7JAb-zwZQbILRlD5wRXC6KYWuehZXbigeKX7NMHVKF0D7dJ-QfoStI0v6eM0ZsanjRINv7iM47dfDfimOMLiWx7kJ~nppTu-isu4yIetAYpn4bqB9kx9dyn9GTNB0cUkcekJPFWKNs68Zx8Bug~yb0eT~gJ0laJfIFd6ChYtAPXOi49E4LFiIS8rM8fFGFppQtV1NSjDjgUXeW9czct1MSIBjO7ffYB1DL5f8GJOS9hY~U-UayEdRSPD-XsnQ__&Key-Pair-Id=APKAINTVSUGEWH5XD5UA",
                        height: 16,
                        width: 16,
                      ),
                      const Text("Feucht II")
                    ],
                  ),
                ],
              ),
              const Text("0:0"),
              const Icon(Icons.star),
              const SizedBox(
                width: 10,
              )
            ],
          ),
        ),
        SizedBox(
          height: 30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                "3.56",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Color.fromRGBO(255, 179, 0, 1)),
              ),
              Text(
                "3.56",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Color.fromRGBO(255, 179, 0, 1)),
              ),
              Text(
                "3.56",
                style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12,
                    color: Color.fromRGBO(255, 179, 0, 1)),
              ),
            ],
          ),
        )
      ],
    );
  }
}
