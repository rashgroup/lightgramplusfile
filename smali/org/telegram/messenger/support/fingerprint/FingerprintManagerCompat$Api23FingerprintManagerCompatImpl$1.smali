.class final Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;
.super Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
.source "FingerprintManagerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->wrapCallback(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$callback:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-direct {p0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationFailed()V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    invoke-virtual {v0, p1, p2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;)V
    .locals 3

    iget-object v0, p0, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl$1;->val$callback:Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;

    new-instance v1, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;

    invoke-virtual {p1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$AuthenticationResultInternal;->getCryptoObject()Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;

    move-result-object v2

    invoke-static {v2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$Api23FingerprintManagerCompatImpl;->unwrapCryptoObject(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompatApi23$CryptoObject;)Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;-><init>(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$CryptoObject;)V

    invoke-virtual {v0, v1}, Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationCallback;->onAuthenticationSucceeded(Lorg/telegram/messenger/support/fingerprint/FingerprintManagerCompat$AuthenticationResult;)V

    return-void
.end method
