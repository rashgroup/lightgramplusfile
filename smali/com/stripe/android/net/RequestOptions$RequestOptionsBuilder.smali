.class public final Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
.super Ljava/lang/Object;
.source "RequestOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stripe/android/net/RequestOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestOptionsBuilder"
.end annotation


# instance fields
.field private apiVersion:Ljava/lang/String;

.field private idempotencyKey:Ljava/lang/String;

.field private publishableApiKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->publishableApiKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public build()Lcom/stripe/android/net/RequestOptions;
    .locals 5

    new-instance v0, Lcom/stripe/android/net/RequestOptions;

    iget-object v1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->apiVersion:Ljava/lang/String;

    iget-object v2, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->idempotencyKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->publishableApiKey:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/stripe/android/net/RequestOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/stripe/android/net/RequestOptions$1;)V

    return-object v0
.end method

.method public setApiVersion(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    invoke-static {p1}, Lcom/stripe/android/util/StripeTextUtils;->isBlank(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->apiVersion:Ljava/lang/String;

    return-object p0
.end method

.method public setIdempotencyKey(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->idempotencyKey:Ljava/lang/String;

    return-object p0
.end method

.method public setPublishableApiKey(Ljava/lang/String;)Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iput-object p1, p0, Lcom/stripe/android/net/RequestOptions$RequestOptionsBuilder;->publishableApiKey:Ljava/lang/String;

    return-object p0
.end method
