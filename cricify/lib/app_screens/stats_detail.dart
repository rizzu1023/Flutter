import 'package:flutter/material.dart';


class stats_detail extends StatefulWidget {
  @override
  _stats_detailState createState() => _stats_detailState();
}



class _stats_detailState extends State<stats_detail> {

  Widget data() => DataTable(
    columns: <DataColumn>[
      DataColumn(
          numeric: false,
          onSort: (i,b){},
          tooltip: 'info',
          label: Text('Name')
      ),
      DataColumn(
          numeric: true,
          onSort: (i,b){},
          tooltip: 'info',
          label: Text('M')
      ),
      DataColumn(
          numeric: true,
          onSort: (i,b){},
          tooltip: 'info',
          label: Text('I')
      ),
//      DataColumn(
//          numeric: true,
//          onSort: (i,b){},
//          tooltip: 'info',
//          label: Text('R')
//      ),
      DataColumn(
          numeric: true,
          onSort: (i,b){},
          tooltip: 'info',
          label: Text('Avg')
      ),
    ],
    rows: <DataRow>[
      DataRow(
        cells: <DataCell>[
          DataCell(Text('Mohammed')),
          DataCell(Text('4')),
          DataCell(Text('2')),
//          DataCell(Text('22')),
          DataCell(Text('212.0')),
        ]
      ),
      DataRow(
          cells: <DataCell>[
            DataCell(Text('Rizwan')),
            DataCell(Text('4')),
            DataCell(Text('2')),
//            DataCell(Text('22')),
            DataCell(Text('212.0')),
          ]
      )

    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats Detail'),
      ),
      body: data(),
    );
  }
}
