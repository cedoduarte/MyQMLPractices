#include "reloj.h"
#include <QDateTime>
#include <QDebug>

Reloj *Reloj::miReloj()
{
    return _miReloj;
}

QString Reloj::leerLaHora()
{
    laHora = QDateTime::currentDateTime().toString("hh:mm:ss");
    return laHora;
}
