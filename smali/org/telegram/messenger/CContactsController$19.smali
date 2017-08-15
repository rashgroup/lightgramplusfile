.class Lorg/telegram/messenger/CContactsController$19;
.super Ljava/lang/Object;
.source "CContactsController.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/messenger/CContactsController;->reloadContactsStatuses()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/messenger/CContactsController;

.field final synthetic val$editor:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Lorg/telegram/messenger/CContactsController;Landroid/content/SharedPreferences$Editor;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/messenger/CContactsController$19;->this$0:Lorg/telegram/messenger/CContactsController;

    iput-object p2, p0, Lorg/telegram/messenger/CContactsController$19;->val$editor:Landroid/content/SharedPreferences$Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-nez p2, :cond_0

    new-instance v0, Lorg/telegram/messenger/CContactsController$19$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/messenger/CContactsController$19$1;-><init>(Lorg/telegram/messenger/CContactsController$19;Lorg/telegram/tgnet/TLObject;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
