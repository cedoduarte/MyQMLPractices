#ifndef RELOJ_H
#define RELOJ_H

#include <QObject>
#include <QQuickView>

class Reloj : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString laHora READ leerLaHora)
public:
    Reloj *miReloj();
    Q_INVOKABLE QString leerLaHora();
private:
    Reloj *_miReloj;
    QString laHora;
};

#endif // RELOJ_H
