#ifndef CRONO_H
#define CRONO_H

#include <QObject>
#include <QTime>

class QTimer;

class Crono : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString mTiempo READ tiempo WRITE cambiaElTiempo)
    Q_PROPERTY(int segundos WRITE modificaSegundo NOTIFY segundoCambiado)
    Q_PROPERTY(int minutos WRITE modificaMinuto NOTIFY minutoCambiado)
public:
    Crono(QObject *parent = nullptr);

    Q_INVOKABLE QString tiempo();
    Q_INVOKABLE void inicia();
    Q_INVOKABLE void detiene();

    void cambiaElTiempo(const QString &h);
    void modificaMinuto(const int &m);
    void modificaSegundo(const int &s);
public slots:
    void actualizaTiempo();
    void modificaDesdeQML();
signals:
    void tiempoCambiado();
    void minutoCambiado();
    void segundoCambiado();
private:
    QString mTiempo;
    QTime comienzo;
    QTimer *timer;
    int segundos;
    int minutos;
};

#endif // CRONO_H
