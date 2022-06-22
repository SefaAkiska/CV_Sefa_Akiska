import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class SkillsSectionWidget extends StatelessWidget {
  const SkillsSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Qualification> qualifications = [
      Qualification('Git', 90),
      Qualification('Flutter/Dart', 70),
      Qualification('.NET', 85),
      Qualification('C#', 85),
      Qualification('Swift', 30)
    ];

    List<charts.Series<Qualification, String>> series = [
      charts.Series(
        id: 'Qualifikation',
        data: qualifications,
        domainFn: (Qualification qualification, _) => qualification.title,
        measureFn: (Qualification qualification, _) => qualification.level,
        colorFn: (a, _) => charts.ColorUtil.fromDartColor(Colors.white),
      )
    ];

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 1.0),
              child: Text(
                'Qualifikationen',
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 20.0),
              child: SizedBox(
                height: 300,
                child: charts.BarChart(
                  series,
                  animate: true,
                  domainAxis: charts.OrdinalAxisSpec(
                    renderSpec: charts.SmallTickRendererSpec(
                        labelStyle: const charts.TextStyleSpec(
                          fontSize: 14, // size in Pts.
                          color: charts.MaterialPalette.white,
                        ),
                        lineStyle: charts.LineStyleSpec(
                          color: charts.ColorUtil.fromDartColor(Colors.blue),
                        ),
                        labelOffsetFromAxisPx: 10),
                  ),
                  primaryMeasureAxis: charts.NumericAxisSpec(
                    viewport: const charts.NumericExtents(0, 100),
                    showAxisLine: false,
                    renderSpec: charts.GridlineRendererSpec(
                      labelStyle: const charts.TextStyleSpec(
                        fontSize: 14, // size in Pts.
                        color: charts.MaterialPalette.white,
                      ),
                      lineStyle: charts.LineStyleSpec(
                        color: charts.ColorUtil.fromDartColor(Colors.blue),
                        thickness: 1,
                      ),
                      labelOffsetFromAxisPx: 5,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Qualification {
  final String title;
  final int level;

  Qualification(this.title, this.level);
}
