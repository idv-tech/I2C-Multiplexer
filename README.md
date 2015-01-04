I2C-Multiplexer
===============

Lightweigh I2C Multiplexer IP on Verilog for Xilinx Vivado.

We needed to connect 2 I2C slave devices connected on PCB to different set of pins of FPGA. Xilinx provided reference design used two different AXI_IIC IP to communicated with those slaves, but such solution cost some FPGA resources. So, this is light alternative for such situation.
IP was somewhat tested/

Легковесный I2C мультиплексор написанный на Verilog для Xilinx Vivado.

На одной из плат, которую мы используем, два разных I2C устройства были разведены на разные ножки ПЛИС. Пример от Xilinx использовал два AXI_IIC модуля, но такое решение требует значительное количество ресурсов ПЛИС. Данное решение реализует простейший коммутатор I2C сигналов.
Решение работает в нашем случае, но если у вас возникли какие-либо проблемы - дайте нам знать.
