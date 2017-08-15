.class public Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;
.super Ljava/lang/Object;
.source "FingerprintManagerCompatApi23.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CryptoObject"
.end annotation


# instance fields
.field private final mCipher:Ljavax/crypto/Cipher;

.field private final mMac:Ljavax/crypto/Mac;

.field private final mSignature:Ljava/security/Signature;


# direct methods
.method public constructor <init>(Ljava/security/Signature;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    iput-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Cipher;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    iput-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-void
.end method

.method public constructor <init>(Ljavax/crypto/Mac;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    iput-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    iput-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    return-void
.end method


# virtual methods
.method public getCipher()Ljavax/crypto/Cipher;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mCipher:Ljavax/crypto/Cipher;

    return-object v0
.end method

.method public getMac()Ljavax/crypto/Mac;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mMac:Ljavax/crypto/Mac;

    return-object v0
.end method

.method public getSignature()Ljava/security/Signature;
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;->mSignature:Ljava/security/Signature;

    return-object v0
.end method
