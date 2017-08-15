.class Lorg/telegram/messenger/CContactsController$4;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->forceImportContacts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$4;->this$0:Lorg/telegram/messenger/CContactsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v2, 0x1

    invoke-static {}, Lorg/telegram/messenger/CContactsController;->getInstance()Lorg/telegram/messenger/CContactsController;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/messenger/CContactsController;->performSyncPhoneBook(Ljava/util/HashMap;ZZZZ)V

    return-void
.end method
