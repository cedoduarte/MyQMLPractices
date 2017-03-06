#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "reloj.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    Reloj elReloj;
    engine.rootContext()->setContextProperty("obj", &elReloj);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
