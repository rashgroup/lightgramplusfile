.class Lorg/telegram/ui/DialogsActivityF$17;
.super Ljava/lang/Object;
.source "DialogsActivityF.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivityF;->didSelectResult(JZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivityF;

.field final synthetic val$dialog_id:J


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivityF;J)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/DialogsActivityF$17;->this$0:Lorg/telegram/ui/DialogsActivityF;

    iput-wide p2, p0, Lorg/telegram/ui/DialogsActivityF$17;->val$dialog_id:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lorg/telegram/ui/DialogsActivityF$17;->this$0:Lorg/telegram/ui/DialogsActivityF;

    iget-wide v2, p0, Lorg/telegram/ui/DialogsActivityF$17;->val$dialog_id:J

    # invokes: Lorg/telegram/ui/DialogsActivityF;->didSelectResult(JZZ)V
    invoke-static {v0, v2, v3, v1, v1}, Lorg/telegram/ui/DialogsActivityF;->access$1900(Lorg/telegram/ui/DialogsActivityF;JZZ)V

    return-void
.end method
