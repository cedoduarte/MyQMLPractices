#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "crono.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    qmlRegisterType<Crono>("com.qt.crono", 1, 0, "Crono");
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}
