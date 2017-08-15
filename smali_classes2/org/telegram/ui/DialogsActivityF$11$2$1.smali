.class Lorg/telegram/ui/DialogsActivityF$11$2$1;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF$11$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/DialogsActivityF$11$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF$11$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$11$2$1;->this$2:Lorg/telegram/ui/DialogsActivityF$11$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/DialogsActivityF$11$2$1;->this$2:Lorg/telegram/ui/DialogsActivityF$11$2;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivityF$11$2;->this$1:Lorg/telegram/ui/DialogsActivityF$11;

    iget-object v1, v1, Lorg/telegram/ui/DialogsActivityF$11;->this$0:Lorg/telegram/ui/DialogsActivityF;

    # getter for: Lorg/telegram/ui/DialogsActivityF;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/DialogsActivityF;->access$2500(Lorg/telegram/ui/DialogsActivityF;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    return-void
.end method
