import 'package:flutter/material.dart';

class Temperatures {
  String id;
  String object;
  int amount;
  int amountCapturable;
  AmountDetails amountDetails;
  int amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethods automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String captureMethod;
  String clientSecret;
  String confirmationMethod;
  int created;
  String currency;
  dynamic customer;
  dynamic description;
  dynamic invoice;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool livemode;
  Metadata metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodOptions paymentMethodOptions;
  List<String> paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String status;
  dynamic transferData;
  dynamic transferGroup;

  Temperatures({
    required this.id,
    required this.object,
    required this.amount,
    required this.amountCapturable,
    required this.amountDetails,
    required this.amountReceived,
    required this.application,
    required this.applicationFeeAmount,
    required this.automaticPaymentMethods,
    required this.canceledAt,
    required this.cancellationReason,
    required this.captureMethod,
    required this.clientSecret,
    required this.confirmationMethod,
    required this.created,
    required this.currency,
    required this.customer,
    required this.description,
    required this.invoice,
    required this.lastPaymentError,
    required this.latestCharge,
    required this.livemode,
    required this.metadata,
    required this.nextAction,
    required this.onBehalfOf,
    required this.paymentMethod,
    required this.paymentMethodOptions,
    required this.paymentMethodTypes,
    required this.processing,
    required this.receiptEmail,
    required this.review,
    required this.setupFutureUsage,
    required this.shipping,
    required this.source,
    required this.statementDescriptor,
    required this.statementDescriptorSuffix,
    required this.status,
    required this.transferData,
    required this.transferGroup,
  });

}

class AmountDetails {
  Metadata tip;

  AmountDetails({
    required this.tip,
  });

}

class Metadata {
  Metadata();
}

class AutomaticPaymentMethods {
  bool enabled;

  AutomaticPaymentMethods({
    required this.enabled,
  });

}

class PaymentMethodOptions {
  Card card;
  Link link;

  PaymentMethodOptions({
    required this.card,
    required this.link,
  });

}

class Card {
  dynamic installments;
  dynamic mandateOptions;
  dynamic network;
  String requestThreeDSecure;

  Card({
    required this.installments,
    required this.mandateOptions,
    required this.network,
    required this.requestThreeDSecure,
  });

}

class Link {
  dynamic persistentToken;

  Link({
    required this.persistentToken,
  });

}
