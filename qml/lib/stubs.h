#ifndef STUBS_H
#define STUBS_H

#include "kamlo.h"

#include <QtCore/QAbstractItemModel>
#include <QtQuick/qquickview.h>
#include <QtCore/QDebug>
#include <QtQml/QQmlContext>

extern void registerContext(const QString& name, QQmlContext* v);
extern QModelIndex make_qmodelindex4(int, int, void*, const QAbstractItemModel *);
/*
#define CAMLOBJ_PROPERTY "_camlobj"

#define GET_CAML_OBJECT(cppobj,varname) \
 QVariant camlobj_variant = cppobj->property(CAMLOBJ_PROPERTY);\
 qlonglong varname = (camlobj_variant.isValid()) ? camlobj_variant.toLongLong() : 0;
*/
#endif
