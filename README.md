# LABANITA Cashier

Windows cashier and menu generator for LABANITA Cantine.

## Start
1. Download the repository ZIP and extract it.
2. Double-click `Start LABANITA Register.bat`.
3. Set your receipt printer as the Windows default printer and select 80 mm roll paper.

## Features
- Menu items, prices, categories and order notes
- Number keypad item selection
- Daily order numbers and sales history
- Customer receipts and optional kitchen tickets
- Menu generator and sales CSV export

Number + Enter adds an item. Enter with an empty number field charges the order and prints when automatic printing is enabled.

The standalone app stores menu and sales in its local browser profile on that PC. This repository contains application files, not your stored sales. Configure your real prices before use. Test a receipt with your printer before taking live orders.

## Source
`online-page/labanita-cashier.html` contains the page source. `build-pc-copy.sh` rebuilds the standalone HTML using a POSIX shell such as Git Bash.
