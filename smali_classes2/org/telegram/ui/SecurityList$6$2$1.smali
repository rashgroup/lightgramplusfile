.class Lorg/telegram/ui/SecurityList$6$2$1;
.super Ljava/lang/Object;
.source "SecurityList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SecurityList$6$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/telegram/ui/SecurityList$6$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SecurityList$6$2;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SecurityList$6$2$1;->this$2:Lorg/telegram/ui/SecurityList$6$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/SecurityList$6$2$1;->this$2:Lorg/telegram/ui/SecurityList$6$2;

    iget-object v1, v1, Lorg/telegram/ui/SecurityList$6$2;->this$1:Lorg/telegram/ui/SecurityList$6;

    iget-object v1, v1, Lorg/telegram/ui/SecurityList$6;->this$0:Lorg/telegram/ui/SecurityList;

    # getter for: Lorg/telegram/ui/SecurityList;->selectedDialog:J
    invoke-static {v1}, Lorg/telegram/ui/SecurityList;->access$2300(Lorg/telegram/ui/SecurityList;)J

    move-result-wide v2

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lorg/telegram/messenger/MessagesController;->deleteDialog(JI)V

    return-void
.end method
