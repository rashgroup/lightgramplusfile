.class public Lcom/stripe/android/Stripe;
.super Ljava/lang/Object;
.source "Stripe.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/Stripe$TokenCreator;,
        Lcom/stripe/android/Stripe$ResponseWrapper;
    }
.end annotation


# instance fields
.field private defaultPublishableKey:Ljava/lang/String;

.field tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/stripe/android/Stripe$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/Stripe$1;-><init>(Lcom/stripe/android/Stripe;)V

    iput-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/stripe/android/Stripe$1;

    invoke-direct {v0, p0}, Lcom/stripe/android/Stripe$1;-><init>(Lcom/stripe/android/Stripe;)V

    iput-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    invoke-virtual {p0, p1}, Lcom/stripe/android/Stripe;->setDefaultPublishableKey(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/stripe/android/Stripe;Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/android/Stripe;->tokenTaskPostExecution(Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method static synthetic access$200(Lcom/stripe/android/Stripe;Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/stripe/android/Stripe;->executeTokenTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V

    return-void
.end method

.method private executeTokenTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/stripe/android/Stripe$ResponseWrapper;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-le v0, v1, :cond_0

    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p2, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    return-void

    :cond_0
    new-array v0, v2, [Ljava/lang/Void;

    invoke-virtual {p2, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private tokenTaskPostExecution(Lcom/stripe/android/Stripe$ResponseWrapper;Lcom/stripe/android/TokenCallback;)V
    .locals 2

    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->token:Lcom/stripe/android/model/Token;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->token:Lcom/stripe/android/model/Token;

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onSuccess(Lcom/stripe/android/model/Token;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->error:Ljava/lang/Exception;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/stripe/android/Stripe$ResponseWrapper;->error:Ljava/lang/Exception;

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Somehow got neither a token response or an error response"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    goto :goto_0
.end method

.method private validateKey(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/stripe/android/exception/AuthenticationException;

    const-string/jumbo v1, "Invalid Publishable Key: You must use a valid publishable key to create a token.  For more info, see https://stripe.com/docs/stripe.js."

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    :cond_1
    const-string/jumbo v0, "sk_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/stripe/android/exception/AuthenticationException;

    const-string/jumbo v1, "Invalid Publishable Key: You are using a secret key to create a token, instead of the publishable one. For more info, see https://stripe.com/docs/stripe.js"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/stripe/android/exception/AuthenticationException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    throw v0

    :cond_2
    return-void
.end method


# virtual methods
.method public createToken(Lcom/stripe/android/model/Card;Lcom/stripe/android/TokenCallback;)V
    .locals 1
    .param p1    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Lcom/stripe/android/TokenCallback;)V
    .locals 1
    .param p1    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    .locals 2
    .param p1    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Required Parameter: \'card\' is required to create a token"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/stripe/android/exception/AuthenticationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-interface {p4, v0}, Lcom/stripe/android/TokenCallback;->onError(Ljava/lang/Exception;)V

    :goto_0
    return-void

    :cond_0
    if-nez p4, :cond_1

    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Required Parameter: \'callback\' is required to use the created token and handle errors"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p2}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/stripe/android/Stripe;->tokenCreator:Lcom/stripe/android/Stripe$TokenCreator;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/stripe/android/Stripe$TokenCreator;->create(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    :try_end_1
    .catch Lcom/stripe/android/exception/AuthenticationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public createToken(Lcom/stripe/android/model/Card;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V
    .locals 1
    .param p1    # Lcom/stripe/android/model/Card;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/stripe/android/TokenCallback;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/stripe/android/Stripe;->createToken(Lcom/stripe/android/model/Card;Ljava/lang/String;Ljava/util/concurrent/Executor;Lcom/stripe/android/TokenCallback;)V

    return-void
.end method

.method public createTokenSynchronous(Lcom/stripe/android/model/Card;)Lcom/stripe/android/model/Token;
    .locals 1

    iget-object v0, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/stripe/android/Stripe;->createTokenSynchronous(Lcom/stripe/android/model/Card;Ljava/lang/String;)Lcom/stripe/android/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public createTokenSynchronous(Lcom/stripe/android/model/Card;Ljava/lang/String;)Lcom/stripe/android/model/Token;
    .locals 2

    invoke-direct {p0, p2}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/stripe/android/net/RequestOptions;->builder(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->build()Lcom/stripe/android/net/RequestOptions;

    move-result-object v0

    invoke-static {p1}, Lcom/stripe/android/util/StripeNetworkUtils;->hashMapFromCard(Lcom/stripe/android/model/Card;)Ljava/util/Map;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/stripe/android/net/StripeApiHandler;->createToken(Ljava/util/Map;Lcom/stripe/android/net/RequestOptions;)Lcom/stripe/android/model/Token;

    move-result-object v0

    return-object v0
.end method

.method public setDefaultPublishableKey(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation

        .annotation build Landroid/support/annotation/Size;
            min = 0x1L
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/stripe/android/Stripe;->validateKey(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/stripe/android/Stripe;->defaultPublishableKey:Ljava/lang/String;

    return-void
.end method
