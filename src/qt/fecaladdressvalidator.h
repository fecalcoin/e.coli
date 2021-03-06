// Copyright (c) 2011-2014 The Bitcoin Core developers
// Copyright (c) 2017 The Fecal E.coli developers
// Distributed under the MIT software license, see the accompanying
// file COPYING or http://www.opensource.org/licenses/mit-license.php.

#ifndef FECAL_QT_FECALADDRESSVALIDATOR_H
#define FECAL_QT_FECALADDRESSVALIDATOR_H

#include <QValidator>

/** Base58 entry widget validator, checks for valid characters and
 * removes some whitespace.
 */
class RavenAddressEntryValidator : public QValidator
{
    Q_OBJECT

public:
    explicit RavenAddressEntryValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

/** Fecal address widget validator, checks for a valid fecal address.
 */
class RavenAddressCheckValidator : public QValidator
{
    Q_OBJECT

public:
    explicit RavenAddressCheckValidator(QObject *parent);

    State validate(QString &input, int &pos) const;
};

#endif // FECAL_QT_FECALADDRESSVALIDATOR_H
