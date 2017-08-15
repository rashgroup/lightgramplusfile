.class Lcom/onesignal/TrackGooglePurchase$2;
.super Ljava/lang/Object;
.source "TrackGooglePurchase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/TrackGooglePurchase;->QueryBoughtItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onesignal/TrackGooglePurchase;


# direct methods
.method constructor <init>(Lcom/onesignal/TrackGooglePurchase;)V
    .locals 0

    iput-object p1, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v1, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # setter for: Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    invoke-static {v0, v1}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    :try_start_0
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->IInAppBillingServiceClass:Ljava/lang/Class;
    invoke-static {}, Lcom/onesignal/TrackGooglePurchase;->access$600()Ljava/lang/Class;

    move-result-object v1

    # invokes: Lcom/onesignal/TrackGooglePurchase;->getGetPurchasesMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    invoke-static {v1}, Lcom/onesignal/TrackGooglePurchase;->access$700(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    # setter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v0, v1}, Lcom/onesignal/TrackGooglePurchase;->access$502(Lcom/onesignal/TrackGooglePurchase;Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    :cond_0
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->getPurchasesMethod:Ljava/lang/reflect/Method;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$500(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->mIInAppBillingService:Ljava/lang/Object;
    invoke-static {v1}, Lcom/onesignal/TrackGooglePurchase;->access$100(Lcom/onesignal/TrackGooglePurchase;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->appContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/onesignal/TrackGooglePurchase;->access$800(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "inapp"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const/4 v5, 0x0

    aput-object v5, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v1, "RESPONSE_CODE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v1, "INAPP_PURCHASE_ITEM_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    const-string/jumbo v1, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move v2, v3

    :goto_0
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "purchaseToken"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->purchaseTokens:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/onesignal/TrackGooglePurchase;->access$900(Lcom/onesignal/TrackGooglePurchase;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # invokes: Lcom/onesignal/TrackGooglePurchase;->sendPurchases(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v0, v4, v5}, Lcom/onesignal/TrackGooglePurchase;->access$1000(Lcom/onesignal/TrackGooglePurchase;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # setter for: Lcom/onesignal/TrackGooglePurchase;->isWaitingForPurchasesRequest:Z
    invoke-static {v0, v3}, Lcom/onesignal/TrackGooglePurchase;->access$402(Lcom/onesignal/TrackGooglePurchase;Z)Z

    return-void

    :cond_4
    :try_start_1
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    const/4 v1, 0x0

    # setter for: Lcom/onesignal/TrackGooglePurchase;->newAsExisting:Z
    invoke-static {v0, v1}, Lcom/onesignal/TrackGooglePurchase;->access$1102(Lcom/onesignal/TrackGooglePurchase;Z)Z

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "ExistingPurchases"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/onesignal/TrackGooglePurchase$2;->this$0:Lcom/onesignal/TrackGooglePurchase;

    # getter for: Lcom/onesignal/TrackGooglePurchase;->prefsEditor:Landroid/content/SharedPreferences$Editor;
    invoke-static {v0}, Lcom/onesignal/TrackGooglePurchase;->access$1200(Lcom/onesignal/TrackGooglePurchase;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method
