#include "crono.h"
#include <QDateTime>
#include <QTimer>

Crono::Crono(QObject *parent)
    : QObject(parent)
{
    segundos = 0;
    minutos = 0;
}

QString Crono::tiempo()
{
    //mTiempo = QDateTime::currentDateTime().toString("hh:mm:ss");
    return mTiempo;
}

void Crono::cambiaElTiempo(const QString &h)
{
    if (h != mTiempo) {
        mTiempo = h;
        emit tiempoCambiado();
    }
}

void Crono::modificaMinuto(const int &m)
{
    minutos = m;
    emit minutoCambiado();
}

void Crono::modificaSegundo(const int &s)
{
    segundos = s;
    emit segundoCambiado();
}

void Crono::modificaDesdeQML()
{
    emit segundoCambiado();
}

void Crono::inicia()
{
    comienzo = QTime::currentTime();
    timer = new QTimer(this);
    connect(timer, SIGNAL(timeout()), this, SLOT(actualizaTiempo()));
    timer->start(10);
}

void Crono::detiene()
{
    comienzo.setHMS(0, 0, 0);
    timer->stop();
}

void Crono::actualizaTiempo()
{
    int miliseconds = comienzo.elapsed();
    int ms = miliseconds % 1000;
    int s = miliseconds / 1000 % 60;
    int m = miliseconds / 60000 % 60;
    int h = miliseconds / 3600000 % 24;

    if (s != segundos) {
        modificaSegundo(s);
    }
    if (m != minutos) {
        modificaMinuto(m);
    }

    QTime crono;
    crono.setHMS(h, m, s, ms);
    cambiaElTiempo(crono.toString("hh:mm:ss:z"));
}
