.class Lorg/telegram/ui/PhotoViewer$47$1;
.super Ljava/lang/Object;
.source "PhotoViewer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PhotoViewer$47;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/PhotoViewer$47;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PhotoViewer$47;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/PhotoViewer$47$1;->this$1:Lorg/telegram/ui/PhotoViewer$47;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/telegram/ui/PhotoViewer$47$1;->this$1:Lorg/telegram/ui/PhotoViewer$47;

    iget-object v0, v0, Lorg/telegram/ui/PhotoViewer$47;->this$0:Lorg/telegram/ui/PhotoViewer;

    const/4 v1, 0x0

    # invokes: Lorg/telegram/ui/PhotoViewer;->switchToEditMode(I)V
    invoke-static {v0, v1}, Lorg/telegram/ui/PhotoViewer;->access$8900(Lorg/telegram/ui/PhotoViewer;I)V

    return-void
.end method
